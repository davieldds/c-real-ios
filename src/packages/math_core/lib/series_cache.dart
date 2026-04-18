/// A simple exact rational number used by the series caches.
/// We keep the sum as a fraction (numerator/denominator) so we can
/// round correctly to *any* binary scale later.
class RationalSum {
  BigInt numerator;
  BigInt denominator;

  RationalSum(this.numerator, this.denominator) {
    _normalize();
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
    final num = a.numerator * b.denominator + b.numerator * a.denominator;
    final den = a.denominator * b.denominator;
    return RationalSum(num, den);
  }

  static RationalSum subtract(RationalSum a, RationalSum b) {
    final num = a.numerator * b.denominator - b.numerator * a.denominator;
    final den = a.denominator * b.denominator;
    return RationalSum(num, den);
  }

  RationalSum multiplyInt(BigInt factor) {
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
    final sign = signAt(start);
    final num = BigInt.from(sign);
    final den = denomAt(start);
    return RationalSum(num, den);
  }

  // Split range in half and combine exact rationals.
  final mid = (start + end) >> 1;
  final left = _binarySplitSum(start, mid, denomAt, signAt);
  final right = _binarySplitSum(mid, end, denomAt, signAt);

  return RationalSum.add(left, right);
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
    if (requiredTerms <= _maxTerms) return;

    final range = _binarySplitSum(
      _maxTerms,
      requiredTerms,
      (index) => _denominators[index],
      (index) => index.isEven ? 1 : -1,
    );

    _sum = RationalSum.add(_sum, range);
    _maxTerms = requiredTerms;
  }

  /// Returns the cached sum rounded to the requested binary scale.
  BigInt sumAtScale(int requestedScale) {
    return roundRationalToScale(_sum, requestedScale);
  }

  /// Returns the exact sum accumulated so far.
  /// Useful when combining series with integer coefficients (e.g., Machin’s π).
  RationalSum get sumRational => _sum;

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

  PiCache(int scale)
    : atan5 = AtanReciprocalCache(scale, 5),
      atan239 = AtanReciprocalCache(scale, 239);
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
    if (requiredTerms <= _maxTerms) return;

    final range = _binarySplitSum(
      _maxTerms,
      requiredTerms,
      (index) => _factorials[index],
      (_) => 1,
    );

    _sum = RationalSum.add(_sum, range);
    _maxTerms = requiredTerms;
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
