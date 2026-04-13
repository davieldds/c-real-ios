import 'package:math_core/error_budgeting.dart';
import 'package:math_core/rational_approximation.dart';
import 'package:math_core/rational_math.dart';
import 'package:math_core/real_math.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:syntax_tree/evaluation_result.dart';

/// MathCore is a math library that evaluates the value of each node in a given syntax tree.
/// It uses constructive real arithmetic to guarantee maximum error of 1 in the last evaluated decimal place.

/// This implementation is heavily inspired by the modified version of the calculator developed by
/// Hans-J. Boehm at SGI ([https://www.hboehm.info/new_crcalc/CRCalc.html])
class MathCore {
  MathCore._();

  /// Evaluates the value of the given syntax [tree] to the specified [precision] and also the intermediate results
  /// of each node to the precision required for the calculation.
  /// Nothing is returned, instead the results/errors are stored in the nodes themselves.
  static void evaluate(SyntaxTree tree, int precision) {
    /// If the tree is empty, there's nothing to evaluate
    if (tree.root == null) return;

    /// Start the recursive evaluation from the root node
    evaluateExpression(tree.root!, precision);
  }

  /// Recursively evaluates the value of the given [expression] to the specified [precision].
  static void evaluateExpression(Expression expression, int precision) {
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
        _handleUnary(expression, precision);
        break;

      // +, ×, etc.
      case BinaryExpression():
        _handleBinary(expression, precision);
        break;

      default:
        expression.value = ErrorResult(
          "Invalid expression type: ${expression.runtimeType}",
        );
    }
  }

  /// Helper function that evaluates a [literal] expression to the specified [precision].
  static void _handleLiteral(LiteralExpression literal, int precision) {
    // TODO: Implement irrational literals (e.g. pi, e)

    if (literal.value == null) {
      literal.value = ErrorResult('Invalid literal');
      return;
    }

    if (literal.value is RationalResult) {
      approximateRationalToPrecision(
        literal.value as RationalResult,
        precision,
      );
    } else if (literal.value is RealResult) {
      final realResult = literal.value as RealResult;
      if (realResult.scale < precision) {
        realResult.mantissa *= BigInt.from(
          10,
        ).pow(precision - realResult.scale);
        realResult.scale = precision;
      }
    }
  }

  /// Helper function that evaluates a [unary] expression to the specified [precision].
  static void _handleUnary(UnaryExpression unary, int precision) {
    final child = unary.arg;

    // Check that the argument exists
    if (child == null) {
      unary.value = ErrorResult("Missing argument");
      return;
    }

    // Approximate the magnitude of the child expression to calculate it's required precision for this unary operation
    ErrorBudgeting.evaluateMagnitude(child);

    // If evaluation of the child subtree errored, this node is indeterminate
    if (child.value is ErrorResult || child.value is IndeterminateResult) {
      unary.value = IndeterminateResult();
      return;
    }

    // Calculate the required precision for the child subtree based on the operation and the magnitude of the child expression
    final requiredChildPrecision = ErrorBudgeting.getUnaryPrecision(
      unary,
      precision,
      child.value,
    );

    // Evaluate the argument subtree to its required precision
    evaluateExpression(child, requiredChildPrecision);

    // Based on the result of the child expression evaluation, pick the appropriate logic for the result of this expression
    switch (child.value) {
      // For now, all unary operators only work on the constructive real numbers, so if the child expression is
      // rational, we need to calculate the real approximation
      case RationalResult rationalResult:
        approximateRationalToPrecision(rationalResult, requiredChildPrecision);
        RealMath.EvaluateUnaryExpression(unary, precision);

      // Handle the real result
      case RealResult():
        RealMath.EvaluateUnaryExpression(unary, precision);

      // This codepath should never be reached as we already check for errors and indeterminate results above, but we return indeterminate just to be safe
      default:
        unary.value = IndeterminateResult();
    }
  }

  /// Helper function that evaluates a [binary] expression to the specified [precision].
  static void _handleBinary(BinaryExpression binary, int precision) {
    final left = binary.leftArg, right = binary.rightArg;

    // Check that both arguments exist
    if (left == null || right == null) {
      binary.value = ErrorResult("Missing argument");
      return;
    }

    // Iteratively evaluate to estimate magnitudes
    ErrorBudgeting.evaluateMagnitude(left);
    ErrorBudgeting.evaluateMagnitude(right);

    // If evaluation of any of the subtrees errored, this node is indeterminate
    if (left.value is ErrorResult ||
        left.value is IndeterminateResult ||
        right.value is ErrorResult ||
        right.value is IndeterminateResult) {
      binary.value = IndeterminateResult();
      return;
    }

    // If both subtrees are rational, we can stay in the rational realm and avoid the overhead of approximating to constructive reals
    if (left.value is RationalResult && right.value is RationalResult) {
      RationalMath.EvaluateBinaryExpression(binary);
      return;
    }

    // Otherwise we need to work with constructive reals

    // First calculate the required precision for both subtrees based on the operation and their magnitudes
    final (requiredLeftPrecision, requiredRightPrecision) =
        ErrorBudgeting.getBinaryPrecisions(binary, precision);

    // Evaluate both argument subtrees to their calculated required precision
    evaluateExpression(left, requiredLeftPrecision);
    evaluateExpression(right, requiredRightPrecision);

    // Ensure both arguments have a constructive real approximation
    if (left.value is RationalResult)
      approximateRationalToPrecision(
        left.value as RationalResult,
        requiredLeftPrecision,
      );
    else if (right.value is RationalResult)
      approximateRationalToPrecision(
        right.value as RationalResult,
        requiredRightPrecision,
      );

    // Evaluate the binary expression using the constructive real math logic
    RealMath.EvaluateBinaryExpression(binary, precision);
  }

  /// Helper function to check, whether we can use the cached [result] of a subtree evaluation based on the required [precision]
  static bool _canUseCached(EvaluationResult? result, int presicion) {
    // If the result is null, it means that the subtree hasn't been evaluated yet, so we can't use the cached result
    if (result == null) return false;

    // If the result is an error or indeterminate, we can use the cached result regardless of the required precision
    if (result is ErrorResult || result is IndeterminateResult) return true;

    // If the result is a rational number, we can use the cached result regardless of the required precision
    if (result is RationalResult) return result.scale >= presicion;

    // If the result is a real number, we can only use the cached result if its precision is greater than or equal to the required precision
    if (result is RealResult) return result.scale >= presicion;

    // This codepath should never be reached but we return false just to be safe
    return false;
  }
}
