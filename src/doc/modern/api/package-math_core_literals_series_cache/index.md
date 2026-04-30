---
title: "series_cache"
description: "API documentation for the series_cache library"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# series_cache

## Classes {#section-classes}

| Class | Description |
|---|---|
| [AtanReciprocalCache](/api/package-math_core_literals_series_cache/AtanReciprocalCache) | Cache for atan(1/x) using the Taylor series:   atan(1/x) = Σ (-1)^n / ((2n+1) * x^(2n+1)). |
| [ECache](/api/package-math_core_literals_series_cache/ECache) | Cache for the factorial series of e:   e = Σ 1/n! We store exact factorial denominators and an exact rational sum. |
| [PiCache](/api/package-math_core_literals_series_cache/PiCache) | Cache for the two atan series in Machin’s formula:   π/4 = 4*atan(1/5) − atan(1/239). This lets us reuse the exact sums for any requested precision. |
| [RationalSum](/api/package-math_core_literals_series_cache/RationalSum) | A simple exact rational number used by the series caches. We keep the sum as a fraction (numerator/denominator) so we can round correctly to *any* binary scale later. |

## Functions {#section-functions}

| Function | Description |
|---|---|
| [getECache](/api/package-math_core_literals_series_cache/getECache) | Returns the shared e cache, initializing it on first use with `scale`. |
| [getPiCache](/api/package-math_core_literals_series_cache/getPiCache) | Returns the shared Pi cache, initializing it on first use with `scale`. |
| [resetSeriesCaches](/api/package-math_core_literals_series_cache/resetSeriesCaches) | Clears the shared caches so subsequent calls start fresh. |
| [roundRationalToScale](/api/package-math_core_literals_series_cache/roundRationalToScale) | Rounds an exact rational value to a binary fixed-point mantissa. The returned integer represents `value * 2^(-scale)`, rounded to the nearest integer (half away from zero). |

