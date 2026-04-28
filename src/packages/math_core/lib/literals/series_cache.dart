import 'package:syntax_tree/evaluation_result.dart';

/// A simple exact rational number used by the series caches.
/// We keep the sum as a fraction (numerator/denominator) so we can
/// round correctly to *any* binary scale later.
class RationalSum {
  static final BigInt _one = BigInt.one;
  static final BigInt _minusOne = -BigInt.one;

  BigInt numerator;
  BigInt denominator;

  RationalSum(this.numerator, this.denominator) {
    _normalize();
  }

  RationalSum._raw(this.numerator, this.denominator) {
    if (denominator == BigInt.zero) {
      throw ArgumentError('Denominator cannot be zero');
    }
    if (denominator.isNegative) {
      numerator = -numerator;
      denominator = -denominator;
    }
  }

  static RationalSum zero() => RationalSum(BigInt.zero, BigInt.one);

  void _normalize() {
    // Reject invalid rationals early.
    if (denominator == BigInt.zero) {
      throw ArgumentError('Denominator cannot be zero');
    }

    // Reduce the fraction to simplest form.
    final gcd = numerator.gcd(denominator);
    numerator ~/= gcd;
    denominator ~/= gcd;

    // Keep the denominator positive to normalize the sign.
    if (denominator.isNegative) {
      numerator = -numerator;
      denominator = -denominator;
    }
  }

  static RationalSum add(RationalSum a, RationalSum b) {
    // Fast-paths avoid unnecessary large integer work.
    if (a.numerator == BigInt.zero)
      return RationalSum(b.numerator, b.denominator);
    if (b.numerator == BigInt.zero)
      return RationalSum(a.numerator, a.denominator);

    if (a.denominator == b.denominator) {
      return RationalSum(a.numerator + b.numerator, a.denominator);
    }

    // Cross-cancel common factors between denominators before multiplying.
    // This keeps intermediate numerators/denominators smaller while preserving exactness.
    final denGcd = a.denominator.gcd(b.denominator);
    final aDenReduced = a.denominator ~/ denGcd;
    final bDenReduced = b.denominator ~/ denGcd;

    final num = a.numerator * bDenReduced + b.numerator * aDenReduced;
    final den = aDenReduced * b.denominator;
    return RationalSum(num, den);
  }

  /// Adds two rationals exactly but skips gcd reduction of the result.
  ///
  /// Useful in binary splitting where many intermediate nodes are short-lived
  /// and fully normalizing each one is expensive.
  static RationalSum addUnreduced(RationalSum a, RationalSum b) {
    if (a.numerator == BigInt.zero) {
      return RationalSum._raw(b.numerator, b.denominator);
    }
    if (b.numerator == BigInt.zero) {
      return RationalSum._raw(a.numerator, a.denominator);
    }

    if (a.denominator == b.denominator) {
      return RationalSum._raw(a.numerator + b.numerator, a.denominator);
    }

    final denGcd = a.denominator.gcd(b.denominator);
    final aDenReduced = a.denominator ~/ denGcd;
    final bDenReduced = b.denominator ~/ denGcd;

    final num = a.numerator * bDenReduced + b.numerator * aDenReduced;
    final den = aDenReduced * b.denominator;
    return RationalSum._raw(num, den);
  }

  static RationalSum subtract(RationalSum a, RationalSum b) {
    if (a.numerator == BigInt.zero)
      return RationalSum(-b.numerator, b.denominator);
    if (b.numerator == BigInt.zero)
      return RationalSum(a.numerator, a.denominator);

    if (a.denominator == b.denominator) {
      return RationalSum(a.numerator - b.numerator, a.denominator);
    }

    final denGcd = a.denominator.gcd(b.denominator);
    final aDenReduced = a.denominator ~/ denGcd;
    final bDenReduced = b.denominator ~/ denGcd;

    final num = a.numerator * bDenReduced - b.numerator * aDenReduced;
    final den = aDenReduced * b.denominator;
    return RationalSum(num, den);
  }

  RationalSum multiplyInt(BigInt factor) {
    if (factor == BigInt.zero) return RationalSum.zero();
    if (factor == BigInt.one) return RationalSum(numerator, denominator);
    return RationalSum(numerator * factor, denominator);
  }
}

/// Rounds an exact rational value to a binary fixed-point mantissa.
/// The returned integer represents `value * 2^(-scale)`, rounded
/// to the nearest integer (half away from zero).
BigInt roundRationalToScale(RationalSum value, int scale) {
  final numerator = value.numerator;
  final denominator = value.denominator;

  // Fast path for zero.
  if (numerator == BigInt.zero) return BigInt.zero;

  if (scale >= 0) {
    // Scale moves to the denominator: value / (2^scale).
    final denomScaled = denominator * (BigInt.one << scale);
    var quotient = numerator ~/ denomScaled;
    final remainder = numerator.remainder(denomScaled).abs();

    // Round to nearest (half away from zero).
    if (remainder * BigInt.two >= denomScaled) {
      quotient += numerator.isNegative ? -BigInt.one : BigInt.one;
    }

    return quotient;
  }

  // Negative scale multiplies the numerator by 2^(-scale).
  final factor = BigInt.one << (-scale);
  final scaledNumerator = numerator * factor;
  var quotient = scaledNumerator ~/ denominator;
  final remainder = scaledNumerator.remainder(denominator).abs();

  // Round to nearest (half away from zero).
  if (remainder * BigInt.two >= denominator) {
    quotient += numerator.isNegative ? -BigInt.one : BigInt.one;
  }

  return quotient;
}

/// Sums a rational series using binary splitting.
/// This reduces the number of large divisions by recursively combining
/// partial sums as exact rationals.
RationalSum _binarySplitSum(
  int start,
  int end,
  BigInt Function(int index) denomAt,
  int Function(int index) signAt,
) {
  // Empty range contributes nothing.
  if (end <= start) return RationalSum.zero();

  // Base case: a single term.
  if (end - start == 1) {
    final num = signAt(start) < 0 ? RationalSum._minusOne : RationalSum._one;
    final den = denomAt(start);
    return RationalSum._raw(num, den);
  }

  // Split range in half and combine exact rationals.
  final mid = (start + end) >> 1;
  final left = _binarySplitSum(start, mid, denomAt, signAt);
  final right = _binarySplitSum(mid, end, denomAt, signAt);

  return RationalSum.addUnreduced(left, right);
}

/// Cache for atan(1/x) using the Taylor series:
///   atan(1/x) = Σ (-1)^n / ((2n+1) * x^(2n+1)).
///
/// We keep:
/// - the *exact* denominators of each term
/// - a running *exact rational* sum
/// Then we can round to any binary scale on demand.
class AtanReciprocalCache {
  final int x;
  final BigInt x2;

  BigInt _lastPower;
  final List<BigInt> _denominators;

  int _maxTerms;
  RationalSum _sum;

  AtanReciprocalCache(int scale, this.x)
    : x2 = BigInt.from(x) * BigInt.from(x),
      _lastPower = BigInt.from(x),
      _denominators = [BigInt.from(x)],
      _maxTerms = 0,
      _sum = RationalSum.zero();

  /// Ensures enough terms are cached so rounding at [requestedScale] is stable.
  /// Higher precision extends the exact sum; lower precision reuses it.
  void ensurePrecision(int requestedScale) {
    final requiredTerms = _ensureDenominatorsForScale(requestedScale);

    if (requiredTerms > _maxTerms) {
      final range = _binarySplitSum(
        _maxTerms,
        requiredTerms,
        (index) => _denominators[index],
        (index) => index.isEven ? 1 : -1,
      );
      _sum = RationalSum.add(_sum, range);
      _maxTerms = requiredTerms;
    }
  }

  /// Returns the cached sum rounded to the requested binary scale.
  BigInt sumAtScale(int requestedScale) {
    return roundRationalToScale(_sum, requestedScale);
  }

  /// Returns the exact sum accumulated so far.
  /// Useful when combining series with integer coefficients (e.g., Machin’s π).
  RationalSum get sumRational => _sum;

  /// Number of cached series terms accumulated in [_sum].
  int get maxTerms => _maxTerms;

  /// Bit length of the largest cached term denominator.
  int get lastDenominatorBitLength => _denominators.last.bitLength;

  /// Bit length of the exact sum numerator.
  int get sumNumeratorBitLength => _sum.numerator.abs().bitLength;

  /// Bit length of the exact sum denominator.
  int get sumDenominatorBitLength => _sum.denominator.bitLength;

  int _ensureDenominatorsForScale(int requestedScale) {
    // Once 1/denominator < 2^(requestedScale), the term no longer affects rounding.
    final threshold = BigInt.one << (-requestedScale);

    while (true) {
      final last = _denominators.last;
      if (last > threshold) break;

      // Next term uses x^(2n+1) and (2n+1) in the denominator.
      final nextIndex = _denominators.length;
      final nextPower = _lastPower * x2;
      final nextDenom = nextPower * BigInt.from(2 * nextIndex + 1);

      if (nextDenom > threshold) break;

      _lastPower = nextPower;
      _denominators.add(nextDenom);
    }

    return _denominators.length;
  }
}

/// Cache for the two atan series in Machin’s formula:
///   π/4 = 4*atan(1/5) − atan(1/239).
/// This lets us reuse the exact sums for any requested precision.
class PiCache {
  final AtanReciprocalCache atan5;
  final AtanReciprocalCache atan239;

  RationalSum? _cachedPiRational;
  RealResult? _cachedResult;

  PiCache(int scale)
    : atan5 = AtanReciprocalCache(scale, 5),
      atan239 = AtanReciprocalCache(scale, 239);

  RealResult evaluate(
    int requestedScale,
    int precision,
    BigInt halfUlpMantissa,
  ) {
    final cached = _cachedResult;
    if (cached != null) {
      if (cached.scale == requestedScale) {
        return cached;
      }

      if (cached.scale < requestedScale && _cachedPiRational != null) {
        return RealResult(
          mantissa: roundRationalToScale(_cachedPiRational!, requestedScale) -
              halfUlpMantissa,
          scale: requestedScale,
          precision: precision,
        );
      }
    }

    // Ensure both atan series are extended far enough for this scale.
    atan5.ensurePrecision(requestedScale);
    atan239.ensurePrecision(requestedScale);

    // Combine exact rational sums using Machin's formula:
    // pi = 16*atan(1/5) - 4*atan(1/239).
    final atan5Sum = atan5.sumRational;
    final atan239Sum = atan239.sumRational;
    final term1 = atan5Sum.multiplyInt(BigInt.from(16));
    final term2 = atan239Sum.multiplyInt(BigInt.from(4));
    final piRational = RationalSum.subtract(term1, term2);

    // Round to the requested scale and apply the half-ULP bias.
    final mantissa = roundRationalToScale(piRational, requestedScale) -
        halfUlpMantissa;

    final result = RealResult(
      mantissa: mantissa,
      scale: requestedScale,
      precision: precision,
    );
    _cachedPiRational = piRational;
    if (_cachedResult == null || result.scale < _cachedResult!.scale) {
      _cachedResult = result;
    }
    return result;
  }
}

/// Cache for the factorial series of e:
///   e = Σ 1/n!
/// We store exact factorial denominators and an exact rational sum.
class ECache {
  final List<BigInt> _factorials;

  int _maxTerms;
  RationalSum _sum;

  ECache(int scale)
    : _factorials = [BigInt.one],
      _maxTerms = 0,
      _sum = RationalSum.zero();

  /// Ensures enough terms are cached so rounding at [requestedScale] is stable.
  /// Higher precision extends the exact sum; lower precision reuses it.
  void ensurePrecision(int requestedScale) {
    final requiredTerms = _ensureFactorialsForScale(requestedScale);

    if (requiredTerms > _maxTerms) {
      final range = _binarySplitSum(
        _maxTerms,
        requiredTerms,
        (index) => _factorials[index],
        (_) => 1,
      );
      _sum = RationalSum.add(_sum, range);
      _maxTerms = requiredTerms;
    }
  }

  /// Returns the cached sum rounded to the requested binary scale.
  BigInt sumAtScale(int requestedScale) {
    return roundRationalToScale(_sum, requestedScale);
  }

  /// Returns the exact sum accumulated so far.
  RationalSum get sumRational => _sum;

  int _ensureFactorialsForScale(int requestedScale) {
    // Once 1/n! < 2^(requestedScale), the term no longer affects rounding.
    final threshold = BigInt.one << (-requestedScale);

    while (true) {
      final last = _factorials.last;
      if (last > threshold) break;

      // Next factorial: (n+1)! = n! * (n+1).
      final nextIndex = _factorials.length;
      final next = last * BigInt.from(nextIndex);
      if (next > threshold) break;

      _factorials.add(next);
    }

    return _factorials.length;
  }
}

PiCache? _piCacheSingleton;
ECache? _eCacheSingleton;

/// Returns the shared Pi cache, initializing it on first use with [scale].
PiCache getPiCache(int scale) {
  _piCacheSingleton ??= PiCache(scale);
  return _piCacheSingleton!;
}

/// Returns the shared e cache, initializing it on first use with [scale].
ECache getECache(int scale) {
  _eCacheSingleton ??= ECache(scale);
  return _eCacheSingleton!;
}

/// Clears the shared caches so subsequent calls start fresh.
void resetSeriesCaches() {
  _piCacheSingleton = null;
  _eCacheSingleton = null;
}
