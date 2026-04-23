import 'dart:io';

import 'package:math_core/math_core.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';

/// Default precision for evaluating the expression tree (number of decimal places)
const DEFAULT_PRECISION = 10;

/// Command line tool that calculates the standard deviation of a list of numbers read from stdin.
/// Internally it uses [MathCore] - constructive real arithmetic package
///
/// Usage:
///   dart stddev.dart < numbers.txt (numbers.txt contains a list of numbers separated by whitespace)
///
/// Arguments:
///   -h / --help: Show help message
///   -p / --precision <number>: Set the precision (number of decimal places) for the output (default: 10)
///
/// Output:
///   One number printed to stdout (the standard deviation)

/// Formula for standard deviation:
///   stddev = sqrt( 1/(n - 1) * ( sum of squares - (sum of all numbers)^2/n ) )

void main(List<String> args) {
  // Parse command line arguments
  if (args.contains("-h") || args.contains("--help")) {
    printHelp();
    return;
  }

  int precision = 0;
  try {
    precision = loadPrecisionFromArgs(args);
  } catch (e) {
    stderr.writeln(e);
    exitCode = 1;
    return;
  }

  // Read numbers from stdin and convert them into a list of [LiteralExpression]s
  final numbers = readNumbersFromStdin();

  // Check that at least 1 number was provided
  if (numbers.isEmpty) {
    stderr.writeln(
      "No numbers provided. Please provide a list of numbers separated by whitespace.",
    );
    exitCode = 1;
    return;
  }

  // Build the expression tree for calculating the standard deviation
  final stddevExpression = buildStddevExpression(numbers);
  final tree = SyntaxTree(stddevExpression);

  // Evaluate the expression tree using MathCore
  MathCore.evaluate(tree, precision);

  // Print the result to stdout
  print(tree.root!.value!.value);
}

/// Helper function to read numbers from stdin and convert them into a list of [LiteralExpression]s
List<Expression> readNumbersFromStdin() {
  List<Expression> numbers = [];

  while (true) {
    // Read a line from stdin
    String? line = stdin.readLineSync();

    // EOF reached
    if (line == null) break;

    // Split the line into tokens, filter out empty tokens, and convert each token to a LiteralExpression
    line
        .split(RegExp(r'\s+'))
        .where((s) => s.isNotEmpty)
        .forEach((s) => numbers.add(LiteralExpression(equationForm: s)));
  }

  return numbers;
}

/// Builds an expression tree that calculates the standard deviation of the given list of [numbers] using the required formula.
Expression buildStddevExpression(List<Expression> numbers) {
  // Create sum and sum of squares expressions using the helper function to build balanced addition trees
  final sum = buildBalancedAdditionExpression(numbers, (x) => x);
  final sumOfSquares = buildBalancedAdditionExpression(
    numbers,
    (x) => PwrExpression(
      leftArg: x,
      rightArg: LiteralExpression(
        equationForm: "",
        value: RationalResult(numerator: BigInt.two, denominator: BigInt.one),
      ),
    ),
  );

  // Combine the sum and sum of squares into the final expression for standard deviation
  final root = SqrtExpression(
    // Square root
    arg: DivExpression(
      leftArg: SubExpression(
        // Difference between sum of squares and (sum^2 / n)
        leftArg: sumOfSquares,
        rightArg: DivExpression(
          leftArg: PwrExpression(
            leftArg: sum,
            rightArg: LiteralExpression(
              equationForm: "",
              value: RationalResult(
                numerator: BigInt.two,
                denominator: BigInt.one,
              ),
            ),
          ),
          rightArg: LiteralExpression(
            equationForm: "",
            value: RationalResult(
              numerator: BigInt.from(numbers.length),
              denominator: BigInt.one,
            ),
          ),
        ),
      ),
      rightArg: LiteralExpression(
        // Divide by n - 1
        equationForm: "",
        value: RationalResult(
          numerator: BigInt.from(numbers.length - 1),
          denominator: BigInt.one,
        ),
      ),
    ),
  );

  return root;
}

Expression buildBalancedAdditionExpression(
  List<Expression> numbers,
  Expression Function(Expression) callback, [
  int start = 0,
  int? end,
]) {
  end ??= numbers.length;

  if (start == end)
    return LiteralExpression(
      equationForm: "",
      value: RationalResult(numerator: BigInt.zero, denominator: BigInt.one),
    );

  if (end - start == 1) return callback(numbers[start]);

  int mid = start + (end - start) ~/ 2;
  Expression leftSum = buildBalancedAdditionExpression(
    numbers,
    callback,
    start,
    mid,
  );
  Expression rightSum = buildBalancedAdditionExpression(
    numbers,
    callback,
    mid,
    end,
  );

  return AddExpression(leftArg: leftSum, rightArg: rightSum);
}

void printHelp() {
  print("Standard Deviation Calculator");
  print(
    "Calculates the standard deviation of a list of numbers read from stdin.",
  );
  print("Internally it uses MathCore - constructive real arithmetic package");
  print("");
  print("Usage: dart stddev.dart < numbers.txt");
  print("");
  print("Arguments:");
  print("  -h / --help: Show this help message");
  print(
    "  -p / --precision <number>: Set the precision (number of decimal places) for the output (default: 10)",
  );
}

/// Helper function to parse the precision argument from the command line arguments
int loadPrecisionFromArgs(List<String> args) {
  int precision = DEFAULT_PRECISION;

  int precisionIndex = args.indexWhere(
    (arg) => arg == "-p" || arg == "--precision",
  );

  if (precisionIndex == -1)
    return precision; // No precision argument provided, return default

  if (precisionIndex + 1 >= args.length) {
    throw ArgumentError(
      "Precision argument provided but no value specified. Please provide a number after -p or --precision.",
    );
  }

  String precisionValue = args[precisionIndex + 1];

  if (!RegExp(r'^\d+$').hasMatch(precisionValue)) {
    throw ArgumentError(
      "Invalid precision value: '$precisionValue'. Please provide a non-negative integer.",
    );
  }

  precision = int.parse(precisionValue);

  return precision;
}

String debugStringifySyntaxTree(SyntaxTree tree) {
  final colors = [
    '\x1B[31m', // red
    '\x1B[33m', // yellow
    '\x1B[32m', // green
    '\x1B[36m', // cyan
    '\x1B[34m', // blue
    '\x1B[35m', // magenta
  ];
  final reset = '\x1B[0m';

  String stringify(dynamic expr, int depth) {
    if (expr == null) return "null";

    String lParen = "${colors[depth % colors.length]}($reset";
    String rParen = "${colors[depth % colors.length]})$reset";

    if (expr is LiteralExpression) return "${expr.value?.value}";
    if (expr is AddExpression)
      return "$lParen${stringify(expr.leftArg, depth + 1)} + ${stringify(expr.rightArg, depth + 1)}$rParen";
    if (expr is SubExpression)
      return "$lParen${stringify(expr.leftArg, depth + 1)} - ${stringify(expr.rightArg, depth + 1)}$rParen";
    if (expr is MulExpression)
      return "$lParen${stringify(expr.leftArg, depth + 1)} * ${stringify(expr.rightArg, depth + 1)}$rParen";
    if (expr is DivExpression)
      return "$lParen${stringify(expr.leftArg, depth + 1)} / ${stringify(expr.rightArg, depth + 1)}$rParen";
    if (expr is PwrExpression)
      return "$lParen${stringify(expr.leftArg, depth + 1)} ^ ${stringify(expr.rightArg, depth + 1)}$rParen";
    if (expr is SqrtExpression)
      return "sqrt$lParen${stringify(expr.arg, depth + 1)}$rParen";
    if (expr is FactExpression)
      return "$lParen${stringify(expr.arg, depth + 1)}!$rParen";
    return expr.runtimeType.toString();
  }

  return stringify(tree.root, 0);
}
