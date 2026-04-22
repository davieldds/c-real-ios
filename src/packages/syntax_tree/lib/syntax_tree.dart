import 'package:syntax_tree/utils.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/parser.dart';

/// @author Lukas Pollak
/// This file defines the [SyntaxTree] class, which represents a syntax tree for mathematical equations

class SyntaxTree {
  Expression? root;

  SyntaxTree([this.root]);

  /// Clears the syntax tree by setting the root to null.
  void clear() {
    root = null;
  }

  /// Parses a mathematical equation from a string input and constructs a syntax tree representation of the equation. It uses the [EquationParser] to perform the parsing and updates the root of the syntax tree with the resulting expression.
  void parseEquation(String equation) {
    clear();
    root = EquationParser(equation).parse();
  }

  void printTree() {
    printSyntaxTree(this);
  }
}
