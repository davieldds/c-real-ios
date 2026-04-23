/// Shared configuration and limits for the MathCore evaluation engine.
class MathCoreConfig {
  MathCoreConfig._();

  /// In Constructive Real Arithmetic the computation required to evaluate a 0 expression
  /// is infinite. To prevent infinite loops when trying to find the magnitude of very small numbers,
  /// we set a reasonable precision limit after which we assume the number is effectively zero and stop the search.
  ///
  /// Numbers smaller than 2^-[assumeZeroPrecision] are thus considered zero for the purpose of error budgeting.
  static const int assumeZeroPrecision = 128;

  /// Maximum allowed roughly estimated bit length for a resulting number.
  /// 100,000,000 bits is roughly 12.5 MB of RAM per number.
  static const int maxBitLength = 100000000;

  /// Maximum allowed integer for factorial computation.
  /// Approaching this limit would require significant memory.
  static const int maxFactorial = 5000000;

  /// Maximum allowed depth of the Abstract Syntax Tree (AST) to prevent stack overflow
  /// and excessive memory consumption during recursive evaluation.
  static const int maxAstDepth = 1000;
}
