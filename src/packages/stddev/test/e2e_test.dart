import 'dart:io';
import 'dart:convert';
import 'package:test/test.dart';

void main() {
  /// Helper function to run the console app with given input and arguments
  Future<ProcessResult> runStddev(
    String input, [
    List<String> args = const [],
  ]) async {
    final process = await Process.start('dart', ['bin/stddev.dart', ...args]);

    // Write input to stdin and close it
    process.stdin.write(input);
    await process.stdin.close();

    // Capture stdout and stderr
    final stdoutStr = await process.stdout.transform(utf8.decoder).join();
    final stderrStr = await process.stderr.transform(utf8.decoder).join();
    final exitCode = await process.exitCode;

    return ProcessResult(
      process.pid,
      exitCode,
      stdoutStr.trim(),
      stderrStr.trim(),
    );
  }

  group('stddev E2E tests', () {
    test('calculates correct standard deviation for simple sequence', () async {
      final result = await runStddev("1 2 3");
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('1.0000000000'));
    });

    test('calculates correct standard deviation for longer sequence', () async {
      final result = await runStddev("2 4 4 4 5 5 7 9");
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('2.1380899352'));
    });

    test('respects precision argument (-p)', () async {
      final result = await runStddev("2 4 4 4 5 5 7 9", ['-p', '5']);
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('2.13808'));
    });

    test('respects precision argument (--precision)', () async {
      final result = await runStddev("2 4 4 4 5 5 7 9", ['--precision', '2']);
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('2.13'));
    });

    test('handles multi-line inputs properly', () async {
      final result = await runStddev("1\n2\n3");
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('1.0000000000'));
    });

    test('handles trailing and extra whitespaces', () async {
      final result = await runStddev("  1   2      3   \n");
      expect(result.exitCode, equals(0));
      expect(result.stdout, equals('1.0000000000'));
    });

    test('prints help message with -h', () async {
      final result = await runStddev("", ['-h']);
      expect(result.exitCode, equals(0));
      expect(result.stdout, contains('Standard Deviation Calculator'));
    });

    test('prints help message with --help', () async {
      final result = await runStddev("", ['--help']);
      expect(result.exitCode, equals(0));
      expect(result.stdout, contains('Standard Deviation Calculator'));
    });

    test('handles empty input gracefully', () async {
      final result = await runStddev("");
      expect(result.exitCode, equals(1));
      expect(result.stderr, contains('No numbers provided'));
    });

    test('handles invalid precision argument gracefully', () async {
      final result = await runStddev("1 2 3", ['-p', 'invalid']);
      expect(result.exitCode, equals(1));
      expect(result.stderr, contains('Invalid precision value'));
    });

    test('handles missing precision value gracefully', () async {
      final result = await runStddev("1 2 3", ['-p']);
      expect(result.exitCode, equals(1));
      expect(
        result.stderr,
        contains('Precision argument provided but no value specified'),
      );
    });
  });
}
