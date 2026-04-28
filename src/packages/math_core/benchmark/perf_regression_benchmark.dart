import 'dart:convert';
import 'dart:io';

import 'package:math_core/literals/series_cache.dart';
import 'package:math_core/math_core.dart';

import '../test/helpers.dart';

/// Performance regression benchmark for MathCore.evaluate.
/// Compares current performance against baselines and fails if regression exceeds a factor.

/// The factor threshold for regression failure. If the current time exceeds [baselineMicros] * [_FACTOR], it's considered a regression.
const _FACTOR = 2.0;

/// Path to the JSON file containing baseline performance data.
/// The file should map case identifiers (e.g., "pi@1000") to their baseline execution times in microseconds.
const _BASELINE_PATH = 'benchmark/perf_regression_baseline.json';

/// List of benchmark cases to run, defined as tuples of (benchmark key, literal name, precision).
const _BENCHMARKS = <(String, String, int)>[
  ('pi@1000', 'pi', 1000),
  ('pi@2000', 'pi', 2000),
  ('pi@3000', 'pi', 3000),
  ('pi@2000down', 'pi', 2000),
  ('pi@1000down', 'pi', 1000),
  ('e@1000', 'e', 1000),
  ('e@2000', 'e', 2000),
  ('e@3000', 'e', 3000),
  ('e@2000down', 'e', 2000),
  ('e@1000down', 'e', 1000),
];

// ANSI color codes for terminal output
const _RED = '\x1B[31m';
const _GREEN = '\x1B[32m';
const _YELLOW = '\x1B[33m';
const _RESET = '\x1B[0m';

void main() {
  // Load baseline performance data from the specified JSON file.
  final baselines = _loadBaselines(_BASELINE_PATH);

  // Check that the baselines were loaded successfully. If not, print an error message and exit with a non-zero code.
  if (baselines == null) {
    stderr.writeln(
      '${_RED}Missing or invalid baseline file: $_BASELINE_PATH$_RESET',
    );
    exitCode = 2;
    return;
  }

  // Prepare the list of performance test cases based on the loaded baselines.
  List<PerfCase> cases;
  try {
    cases = _buildCases(baselines);
  } catch (e) {
    stderr.writeln('${_RED}Error preparing benchmark cases: $e$_RESET');
    exitCode = 2;
    return;
  }

  // Print the benchmark header and summary of loaded cases.
  print('Performance regression benchmark');
  print('Loaded ${cases.length} cases from baseline file at $_BASELINE_PATH.');
  print('Regression factor threshold: $_FACTOR\n');

  // To ensure a clean state for the benchmarks, reset any cached series approximations that might affect timing.
  resetSeriesCaches();

  // Run the benchmarks
  runBenchmarks(cases);

  // Evaluate the benchmark results against the baselines and print a summary of any regressions.
  exitCode = evaluateBenchmarks(cases);
}

/// Represents a single performance test case, including the [key] of the benchmark, [literal] being tested, the [precision],
/// the [baseline] execution time in microseconds and the [actual] execution time measured during the benchmark.
class PerfCase {
  final String key;
  final String literal;
  final int precision;
  final int baseline;
  int actual = 0;

  PerfCase(this.key, this.literal, this.precision, this.baseline);
}

/// Helper function to load baseline performance data from a JSON file at the given [path].
Map<String, int>? _loadBaselines(String path) {
  final file = File(path);

  // Check if the file exists.
  if (!file.existsSync()) return null;

  try {
    // Try to read and decode the JSON content of the file.
    final decoded = jsonDecode(file.readAsStringSync());

    // If the decoded content is not a Map<String, dynamic>, return null.
    if (decoded is! Map<String, dynamic>) return null;

    // Iterate through the entries of the decoded map and build a new map of String keys to int values.
    final out = <String, int>{};
    for (final entry in decoded.entries) {
      // Check that the value of each entry is an int. If not, return.
      if (entry.value is! int) return null;

      out[entry.key] = entry.value;
    }

    return out;
  } catch (_) {
    // If any error occurs during file reading or JSON decoding, return null.
    return null;
  }
}

// Builds a list of performance test cases based on the provided [baselines] map.
List<PerfCase> _buildCases(Map<String, int> baselines) {
  final cases = <PerfCase>[];

  // Iterate through the predefined list of benchmarks and create a PerfCase for each one, using the corresponding baseline from the loaded data.
  for (final (key, literal, precision) in _BENCHMARKS) {
    final baseline = baselines[key];

    if (baseline == null || baseline <= 0)
      throw StateError('Missing or invalid baseline for $key');

    cases.add(PerfCase(key, literal, precision, baseline));
  }

  return cases;
}

// Go through each performance test case in [cases], construct the corresponding expression tree, and measure the execution time of evaluating
// it with MathCore.evaluate. The measured time is stored in the [actual] field of each case.
void runBenchmarks(List<PerfCase> cases) {
  for (final c in cases) {
    final tree = treeWith(lit(c.literal));

    final sw = Stopwatch()..start();
    MathCore.evaluate(tree, c.precision);
    sw.stop();

    c.actual = sw.elapsedMicroseconds;
  }
}

// Evaluates the performance of each test case in [cases] against its baseline. If the actual execution time exceeds the baseline by more than
// the defined factor, it's considered a regression. If any regression is found, returns 1, otherwise returns 0. Also prints a summary of the results,
// including the actual and baseline times and any regressions detected.
int evaluateBenchmarks(List<PerfCase> cases) {
  bool hasRegression = false;

  final maxKeyLength = cases
      .map((c) => c.key.length)
      .reduce((a, b) => a > b ? a : b);
  final maxActualLength = cases
      .map((c) => (c.actual.toString().length * 4 / 3).ceil() - 1)
      .reduce((a, b) => a > b ? a : b);
  final maxBaselineLength = cases
      .map((c) => (c.baseline.toString().length * 4 / 3).ceil() - 1)
      .reduce((a, b) => a > b ? a : b);

  for (final c in cases) {
    final regression = c.actual > c.baseline * _FACTOR;

    if (regression) hasRegression = true;

    String differenceStr;
    if (c.baseline > c.actual) {
      final difference = c.baseline / c.actual;
      differenceStr =
          "$_GREEN${difference.toStringAsFixed(2).padLeft(6)}x improvement$_RESET";
    } else {
      final difference = c.actual / c.baseline;
      differenceStr =
          "${regression ? _RED : _YELLOW}${difference.toStringAsFixed(2).padLeft(6)}x regression$_RESET";
    }

    print(
      '${c.key.padLeft(maxKeyLength)}: '
      '${formatNumber(c.actual, maxActualLength)}µs against baseline of ${formatNumber(c.baseline, maxBaselineLength)}µs '
      '-> $differenceStr',
    );
  }

  print("");

  if (hasRegression)
    print("${_RED}Performance regression benchmark failed$_RESET");
  else {
    print(
      "${_GREEN}Performance regression benchmark passed successfully$_RESET\n",
    );

    print("New baselines:");
    print(jsonEncode({for (final c in cases) '${c.key}': c.actual}));
  }

  return hasRegression ? 1 : 0;
}

// Helper function to format a number [n] with thousands separators and pad it to a minimum length of [minLength] characters
String formatNumber(int n, int minLength) {
  return n
      .toString()
      .replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ' ')
      .padLeft(minLength);
}
