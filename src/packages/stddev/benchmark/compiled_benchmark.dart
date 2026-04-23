import 'dart:io';
import 'package:benchmark_harness/benchmark_harness.dart';

/// Benchmark for the compiled Standard Deviation executable
class CompiledStddevBenchmark extends AsyncBenchmarkBase {
  final int count;
  late String inputString;
  final String executablePath;

  CompiledStddevBenchmark(this.count, this.executablePath)
    : super('CompiledStddevCalculation_${count}');

  @override
  Future<void> setup() async {
    // Pre-generate the input string to avoid measuring string creation time
    inputString = List.generate(count, (i) => "$i").join(" ");
  }

  @override
  Future<void> run() async {
    // Execute the compiled binary and pipe the input string to stdin
    final process = await Process.start(executablePath, []);
    process.stdin.write(inputString);
    await process.stdin.close();

    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      throw Exception('Process failed with exit code $exitCode');
    }
  }
}

void main() async {
  print('Compiling stddev executable...');

  // Define output path for the compiled executable
  final exeExtension = Platform.isWindows ? '.exe' : '';
  final exePath = 'benchmark/stddev_compiled$exeExtension';

  // Compile the dart script to a native executable
  final compileResult = Process.runSync('dart', [
    'compile',
    'exe',
    'bin/stddev.dart',
    '-o',
    exePath,
  ]);

  if (compileResult.exitCode != 0) {
    print('Compilation failed:');
    print(compileResult.stdout);
    print(compileResult.stderr);
    exit(1);
  }

  print('Compilation successful. Running benchmarks...\n');

  try {
    // Run the benchmark for 1,000 items
    await CompiledStddevBenchmark(1000, exePath).report();

    // Run the benchmark for 100,000 items
    await CompiledStddevBenchmark(100000, exePath).report();
  } finally {
    // Clean up the compiled executable after running
    final exeFile = File(exePath);
    if (exeFile.existsSync()) {
      exeFile.deleteSync();
    }
  }
}
