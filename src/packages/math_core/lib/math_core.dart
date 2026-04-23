import 'package:math_core/error_budgeting.dart';
import 'package:math_core/literals/literals.dart';
import 'package:math_core/math_core_config.dart';
import 'package:math_core/rational_math/rational_approximation.dart';
import 'package:math_core/rational_math/rational_math.dart';
import 'package:math_core/real_math/real_math.dart';
import 'package:math_core/size_limits.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:syntax_tree/evaluation_result.dart';

/// MathCore evaluates expressions in a syntax tree using constructive real arithmetic (CRA).
///
/// CRA treats each computed value as an exact description that can later be approximated
/// to any requested precision, rather than eagerly rounding at every step. This lets us
/// propagate tight error bounds across complex trees without accumulating floating noise.
///
/// The implementation draws inspiration from Hans-J. Boehm’s CR calculator:
/// https://www.hboehm.info/new_crcalc/CRCalc.html
class MathCore {
  MathCore._();

  /// Evaluates the value of the given syntax [tree] to the specified [precision].
  ///
  /// Each node stores its own evaluated result. For non-leaf expressions this includes
  /// approximating children at a *higher* internal precision so the parent can still
  /// guarantee the requested decimal accuracy. This is the core CRA strategy: compute
  /// as precisely as needed for the error budget, then round once at the end.
  ///
  /// The final value is guaranteed to be within 10^-[precision] of the true value.
  /// In most cases that means the first [precision] digits will be correct, but in some cases
  /// some low-order digits may differ if you later request a higher precision; the
  /// bound remains correct even when the representation looks counterintuitive.
  ///
  /// To keep decimal output stable, the real-number path applies a half‑ULP
  /// (unit in the last place) bias at the requested precision. That nudges rounding
  /// toward decimal truncation so outputs match expected formatting while staying
  /// within the CRA error bound.
  static void evaluate(SyntaxTree tree, int precision) {
    // If the tree is empty, there's nothing to evaluate
    if (tree.root == null) return;

    // Start the recursive evaluation from the root node
    evaluateExpression(tree.root!, precision);

    // If the final result is a RationalResult, we also need to approximate it to the required precision
    if (tree.root!.value is RationalResult)
      approximateRationalToPrecision(
        tree.root!.value as RationalResult,
        precision,
      );
  }

  /// Recursively evaluates the value of the given [expression] to the specified [precision].
  static void evaluateExpression(
    Expression expression,
    int precision, [
    int depth = 0,
  ]) {
    if (depth > MathCoreConfig.maxAstDepth) {
      expression.value = ErrorResult("Expression tree too deep");
      return;
    }

    // Check, whether we can reuse the cached result
    if (_canUseCached(expression.value, precision)) return;

    // Based on the type of the expression, branch out to the appropriate evaluation logic
    switch (expression) {
      // 1, 2, -0.5, etc.
      case LiteralExpression():
        _handleLiteral(expression, precision);
        break;

      // sqrt, fact, etc.
      case UnaryExpression():
        _handleUnary(expression, precision, depth);
        break;

      // +, ×, etc.
      case BinaryExpression():
        _handleBinary(expression, precision, depth);
        break;

      default:
        expression.value = ErrorResult(
          "Invalid expression type: ${expression.runtimeType}",
        );
    }
  }

  /// Helper function that evaluates a [literal] expression to the specified [precision].
  static void _handleLiteral(LiteralExpression literal, int precision) {
    // Check that the literal has a valid equation form
    if (literal.equationForm == "") {
      literal.value = ErrorResult('Empty literal');
      return;
    }

    // Based on the type of the literal, pick the appropriate logic for evaluating its value
    if (Literals.isIrrationalLiteral(literal))
      Literals.evaluateIrrationalLiteral(literal, precision);
    else
      Literals.evaluateRationalLiteral(literal);
  }

  /// Helper function that evaluates a [unary] expression to the specified [precision].
  static void _handleUnary(UnaryExpression unary, int precision, int depth) {
    final child = unary.arg;

    // Check that the argument exists
    if (child == null) {
      unary.value = ErrorResult("Missing argument");
      return;
    }

    // Approximate the magnitude of the child expression to calculate it's required precision for this unary operation
    ErrorBudgeting.evaluateMagnitude(child, depth + 1);

    // If evaluation of the child subtree errored, this node is indeterminate
    if (child.value is ErrorResult || child.value is IndeterminateResult) {
      unary.value = IndeterminateResult();
      return;
    }

    final limitError = SizeLimits.checkLimits(unary);
    if (limitError != null) {
      unary.value = limitError;
      return;
    }

    // Calculate the required precision for the child subtree based on the operation and the magnitude of the child expression
    final requiredChildPrecision = ErrorBudgeting.getUnaryPrecision(
      unary,
      precision,
      child.value,
    );

    // Evaluate the argument subtree to its required precision
    evaluateExpression(child, requiredChildPrecision, depth + 1);

    // Based on the result of the child expression evaluation, pick the appropriate logic for the result of this expression
    switch (child.value) {
      // For now, all unary operators only work on the constructive real numbers, so if the child expression is
      // rational, we need to calculate the real approximation as well
      case RationalResult rationalResult:
        approximateRationalToPrecision(rationalResult, requiredChildPrecision);
        RealMath.EvaluateUnaryExpression(unary, precision);
        return;

      // Handle the real result
      case RealResult():
        RealMath.EvaluateUnaryExpression(unary, precision);
        return;

      // This codepath should never be reached as we already check for errors and indeterminate results above, but we return indeterminate just to be safe
      default:
        unary.value = IndeterminateResult();
    }
  }

  /// Helper function that evaluates a [binary] expression to the specified [precision].
  static void _handleBinary(BinaryExpression binary, int precision, int depth) {
    final left = binary.leftArg, right = binary.rightArg;

    // Check that both arguments exist
    if (left == null || right == null) {
      binary.value = ErrorResult("Missing argument");
      return;
    }

    // Iteratively evaluate to estimate magnitudes
    ErrorBudgeting.evaluateMagnitude(left, depth + 1);
    ErrorBudgeting.evaluateMagnitude(right, depth + 1);

    // If evaluation of any of the subtrees errored, this node is indeterminate
    if (left.value is ErrorResult ||
        left.value is IndeterminateResult ||
        right.value is ErrorResult ||
        right.value is IndeterminateResult) {
      binary.value = IndeterminateResult();
      return;
    }

    final limitError = SizeLimits.checkLimits(binary);
    if (limitError != null) {
      binary.value = limitError;
      return;
    }

    // If possible, stay in the realm of rational numbers
    if (RationalMath.CanEvaluateBinaryExpression(binary)) {
      RationalMath.EvaluateBinaryExpression(binary);
      return;
    }

    // Otherwise we need to work with constructive reals

    // First calculate the required precision for both subtrees based on the operation and their magnitudes
    final (requiredLeftPrecision, requiredRightPrecision) =
        ErrorBudgeting.getBinaryPrecisions(binary, precision);

    // Evaluate both argument subtrees to their calculated required precision
    evaluateExpression(left, requiredLeftPrecision, depth + 1);
    evaluateExpression(right, requiredRightPrecision, depth + 1);

    // Ensure both arguments have a constructive real approximation
    if (left.value is RationalResult)
      approximateRationalToPrecision(
        left.value as RationalResult,
        requiredLeftPrecision,
      );
    if (right.value is RationalResult)
      approximateRationalToPrecision(
        right.value as RationalResult,
        requiredRightPrecision,
      );

    // Evaluate the binary expression using the constructive real math logic
    RealMath.EvaluateBinaryExpression(binary, precision);
  }

  /// Checks whether a cached subtree result is sufficiently precise to reuse.
  ///
  /// - Errors/indeterminate and exact rational results are always reusable.
  /// - For real values, we reuse only if the cached precision is at least
  ///   the requested precision (to avoid losing digits when precision decreases).
  static bool _canUseCached(EvaluationResult? result, int precision) {
    // If the result is null, it means that the subtree hasn't been evaluated yet, so we can't use the cached result
    if (result == null) return false;

    // If the result is an error or indeterminate, we can use the cached result regardless of the required precision
    if (result is ErrorResult || result is IndeterminateResult) return true;

    // If the result is a rational number, we can always reuse the cached result
    if (result is RationalResult) return true;

    // If the result is a real number, we can only use the cached result if its precision is greater than or equal to the required precision
    if (result is RealResult) return result.precision >= precision;

    // This codepath should never be reached but we return false just to be safe
    return false;
  }
}
