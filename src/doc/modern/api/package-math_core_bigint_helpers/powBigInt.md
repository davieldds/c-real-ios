---
title: "powBigInt function"
description: "API documentation for the powBigInt function from bigint_helpers"
category: "Functions"
library: "bigint_helpers"
outline: false
editLink: false
prev: false
next: false
---

# powBigInt

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">powBigInt</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">base</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">exp</span></span><span class="member-signature-token">)</span></span></div></div>

Helper function, that calculates `base` raised to the power of `exp` where both are [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html)s.
Uses exponentiation by squaring for efficiency, assumes that `exp` is a non-negative integer.
i.e. a^n = (a^(n/2))^2 if n is even, and a^n = (a^((n-1)/2))^2 * a if n is odd.

