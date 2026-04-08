import 'package:syntax_tree/syntax_tree.dart';
import 'package:syntax_tree/expression.dart';
import 'package:test/test.dart';

void main() {
  late SyntaxTree tree;

  tearDown(() {
    tree.clear();
  });

  group('SyntaxTree', () {
    setUp(() {
      tree = SyntaxTree();
    });

    test('.clear', () {
      tree.clear();
      expect(tree.root, isNull);
    });

    test('.addExpression', () {
      final expression = Expression();

      tree.addExpression(Expression);

      expect(tree.root, expression);
    });

    test('.getErrorExpressions', () {
      final errors = tree.getErrorExpresions();

      expect(errors, isNull);
    });
    test('.getLeafExpressions', () {
      final leaves = tree.getLeafExpressions();

      expect(leaves, isNull);
    });
  });
}
