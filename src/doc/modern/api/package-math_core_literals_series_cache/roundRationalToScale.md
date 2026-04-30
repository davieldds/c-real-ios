---
title: "roundRationalToScale function"
description: "API documentation for the roundRationalToScale function from series_cache"
category: "Functions"
library: "series_cache"
outline: false
editLink: false
prev: false
next: false
---

# roundRationalToScale

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">roundRationalToScale</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">value</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">scale</span></span><span class="member-signature-token">)</span></span></div></div>

Rounds an exact rational value to a binary fixed-point mantissa.
The returned integer represents `value * 2^(-scale)`, rounded
to the nearest integer (half away from zero).

