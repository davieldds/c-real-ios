import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/syntax_tree.dart';

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
    _evaluateExpression(tree.root!, precision);
  }

  /// Recursively evaluates the value of the given [expression] to the specified [precision].
  static EvaluationResult _evaluateExpression(
    Expression expression,
    int precision,
  ) {
    return EvaluationResult.error; // Not implemented
  }
}

/// Represents the result of an evaluation of an expression
enum EvaluationResult {
  /// The result can be expressed as a rational number
  rational,

  /// The result cannot be expressed as a rational number
  irrational,

  /// An error occurred during evaluation
  error,

  /// Some child subexpression resulted in an evaluation error
  indeterminate,
}
