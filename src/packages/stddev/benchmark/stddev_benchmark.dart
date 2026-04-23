import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:math_core/math_core.dart';

import '../bin/stddev.dart';

/// Benchmark for the Standard Deviation expression building and evaluation
class StddevBenchmark extends BenchmarkBase {
  StddevBenchmark() : super('StddevCalculation');

  late List<Expression> numbers;

  @override
  void setup() {
    // Prepare a list of 1000 numbers to calculate stddev on
    numbers = List.generate(
      1000,
      (i) => LiteralExpression(
        equationForm: "$i",
        value: RationalResult(
          numerator: BigInt.from(i),
          denominator: BigInt.one,
        ),
      ),
    );
  }

  @override
  void run() {
    // Build the expression tree
    final stddevExpression = buildStddevExpression(numbers);
    final tree = SyntaxTree(stddevExpression);

    // Evaluate the expression tree using MathCore with a precision of 10
    MathCore.evaluate(tree, 10);
  }
}

/// Benchmark for the Standard Deviation expression building and evaluation (100k items)
class LargeStddevBenchmark extends BenchmarkBase {
  LargeStddevBenchmark() : super('LargeStddevCalculation_100k');

  late List<Expression> numbers;

  @override
  void setup() {
    // Prepare a list of 100000 numbers to calculate stddev on
    numbers = List.generate(
      100000,
      (i) => LiteralExpression(
        equationForm: "$i",
        value: RationalResult(
          numerator: BigInt.from(i),
          denominator: BigInt.one,
        ),
      ),
    );
  }

  @override
  void run() {
    // Build the expression tree
    final stddevExpression = buildStddevExpression(numbers);
    final tree = SyntaxTree(stddevExpression);

    // Evaluate the expression tree using MathCore with a precision of 10
    MathCore.evaluate(tree, 10);
  }
}

void main() {
  // Run the benchmark and report the results
  StddevBenchmark().report();
  LargeStddevBenchmark().report();
}
