# CRA Notes (Condensed)

## Core model
- Constructive real (CR) is an object that can produce an approximation at a requested precision.
- Arithmetic creates new CR objects; actual numeric evaluation happens on demand via approximation.
- Approximation returns an integer A such that value / 2^precision ≈ A with error < 1 ulp.

## Approximation + caching
- `approximate(precision)` is implemented by subclasses.
- `get_appr(precision)` wraps `approximate` with caching:
  - If a cached approximation exists at min_prec and precision >= min_prec, scale cached value.
  - Otherwise compute approximate(precision) and update cache.
- This enables incremental refinement without recomputation.

## Precision safety
- Precision values are guarded to avoid overflow.
- Most algorithms request extra bits on subcomputations to keep total error < 1 ulp.

## Error budgeting pattern
- Subexpressions are approximated slightly more precisely so:
  - each contributes < 1/4 ulp,
  - rounding contributes ≤ 1/2 ulp,
  - total error < 1 ulp.

## Helper operations
- `shift(k, n)`: exact multiply by 2^n.
- `scale(k, n)`: rounded multiply by 2^n.

## Operations (high level)
- **Add**: evaluate operands at p-2, add, scale back → bounded error.
- **Multiply**: use msd estimates to compute required precision for each operand.
- **Inverse/Division**: estimate msd, scale, divide, round.
- **Shift**: adjust precision directly.
- **Select/Abs/Min/Max**: use comparisons and monotone selection without branching on exact equality.

## Transcendentals
- Implemented via Taylor series with controlled truncation.
- Iterations depend on precision; ensure error < 1 ulp.
- `slow_CR` optionally evaluates at slightly higher precision to reduce recomputation.

## toString / representation
- Decimal output scales by radix^n and approximates to integer.
- Ensures correct rounding at requested digit count.
- Scientific notation computes mantissa/exponent with adequate precision.

## Inverse monotone functions
- Hybrid of binary search and secant-like interpolation.
- Maintains interval bounds and adjusts precision dynamically.
- Guarantees convergence while respecting precision constraints.

## Key takeaway for rational approximation
- CRA relies on incremental refinement using cached approximations, not recomputation.
- For decimal scaling, reuse current mantissa/scale by extracting remainder and extending digits.
- Preserve the 1-ulp error guarantee when rounding new digits.
