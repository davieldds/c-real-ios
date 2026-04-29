import 'dart:async';
import 'dart:isolate';

import 'package:math_core/math_core.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/syntax_tree.dart';

class CancelledEvaluationException implements Exception {}

/// Handles one cancellable evaluation running in a background isolate.
class CancellableEvaluationTask {
  CancellableEvaluationTask._(
    this._isolate,
    this._resultPort,
    this._errorPort,
    this._exitPort,
    this._resultCompleter,
  );

  final Isolate _isolate;
  final ReceivePort _resultPort;
  final ReceivePort _errorPort;
  final ReceivePort _exitPort;
  final Completer<(SyntaxTree, String)> _resultCompleter;
  bool _isCompleted = false;
  bool _isCancelled = false;

  Future<(SyntaxTree, String)> get result => _resultCompleter.future;

  static Future<CancellableEvaluationTask> start(
    SyntaxTree tree,
    int precision,
    bool showAsDecimal,
  ) async {
    final ReceivePort resultPort = ReceivePort();
    final ReceivePort errorPort = ReceivePort();
    final ReceivePort exitPort = ReceivePort();
    final Completer<(SyntaxTree, String)> resultCompleter =
        Completer<(SyntaxTree, String)>();

    final Isolate isolate = await Isolate.spawn(
      _evaluateEntryPoint,
      <Object?>[resultPort.sendPort, tree, precision, showAsDecimal],
      errorsAreFatal: true,
      onError: errorPort.sendPort,
      onExit: exitPort.sendPort,
    );

    final CancellableEvaluationTask task = CancellableEvaluationTask._(
      isolate,
      resultPort,
      errorPort,
      exitPort,
      resultCompleter,
    );
    task._attachListeners();
    return task;
  }

  void _attachListeners() {
    _resultPort.listen((Object? message) {
      if (_isCompleted || _isCancelled) {
        return;
      }

      final (SyntaxTree tree, String formattedResult) =
          message as (SyntaxTree, String);
      _completeSuccess((tree, formattedResult));
    });

    _errorPort.listen((Object? message) {
      if (_isCompleted || _isCancelled) {
        return;
      }

      if (message is List && message.isNotEmpty) {
        _completeError(Exception(message.first.toString()));
        return;
      }
      _completeError(Exception('Evaluation isolate failed.'));
    });

    _exitPort.listen((_) {
      if (_isCompleted || _isCancelled) {
        return;
      }
      _completeError(Exception('Evaluation isolate exited unexpectedly.'));
    });
  }

  void _completeSuccess((SyntaxTree, String) value) {
    _isCompleted = true;
    _closePorts();
    _resultCompleter.complete(value);
  }

  void _completeError(Object error) {
    _isCompleted = true;
    _closePorts();
    _resultCompleter.completeError(error);
  }

  void cancel() {
    if (_isCompleted || _isCancelled) {
      return;
    }
    _isCancelled = true;
    _isolate.kill(priority: Isolate.immediate);
    _closePorts();
    _resultCompleter.completeError(CancelledEvaluationException());
  }

  void _closePorts() {
    _resultPort.close();
    _errorPort.close();
    _exitPort.close();
  }
}

void _evaluateEntryPoint(List<Object?> args) {
  final SendPort sendPort = args[0]! as SendPort;
  final SyntaxTree tree = args[1]! as SyntaxTree;
  final int precision = args[2]! as int;
  final bool showAsDecimal = args[3]! as bool;

  MathCore.evaluate(tree, precision);

  final value = tree.root?.value;
  if (value == null) {
    throw FormatException('Evaluation did not produce a result.');
  }

  final String formattedResult = (value is RationalResult && showAsDecimal)
      ? value.decimalValue
      : value.toString();

  sendPort.send((tree, formattedResult));
}
