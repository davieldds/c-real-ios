import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';

String syntaxTreeToString(SyntaxTree tree) {
  if (tree.root == null) {
    return '<empty tree>';
  }

  final lines = <String>['root: ${_expressionLabel(tree.root!)}'];
  _writeChildren(tree.root!, lines, '');
  return lines.join('\n');
}

void printSyntaxTree(SyntaxTree tree) {
  for (final line in syntaxTreeToString(tree).split('\n')) {
    // ignore: avoid_print
    print(line);
  }
}

void _writeChildren(Expression node, List<String> lines, String prefix) {
  final children = <MapEntry<String, Expression?>>[];

  if (node is BinaryExpression) {
    children
      ..add(MapEntry('left', node.leftArg))
      ..add(MapEntry('right', node.rightArg));
  } else if (node is UnaryExpression) {
    children.add(MapEntry('arg', node.arg));
  }

  for (int i = 0; i < children.length; i++) {
    final child = children[i];
    final isLast = i == children.length - 1;
    final connector = isLast ? '└── ' : '├── ';

    if (child.value == null) {
      lines.add('$prefix$connector${child.key}: null');
      continue;
    }

    lines.add(
      '$prefix$connector${child.key}: ${_expressionLabel(child.value!)}',
    );

    _writeChildren(child.value!, lines, '$prefix${isLast ? '    ' : '│   '}');
  }
}

String _expressionLabel(Expression expr) {
  if (expr is LiteralExpression) {
    return 'Literal(${expr.equationForm})';
  }

  if (expr is AddExpression) {
    return 'Add(+)';
  }

  if (expr is SubExpression) {
    return 'Sub(-)';
  }

  if (expr is MulExpression) {
    return 'Mul(*)';
  }

  if (expr is FactExpression) {
    return 'Fact(!)';
  }

  return expr.runtimeType.toString();
}
