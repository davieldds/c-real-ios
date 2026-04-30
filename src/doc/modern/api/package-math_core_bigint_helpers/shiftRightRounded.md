---
title: "shiftRightRounded function"
description: "API documentation for the shiftRightRounded function from bigint_helpers"
category: "Functions"
library: "bigint_helpers"
outline: false
editLink: false
prev: false
next: false
---

# shiftRightRounded

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">shiftRightRounded</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">value</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">shift</span></span><span class="member-signature-token">)</span></span></div></div>

Shifts right by `shift` bits with rounding to nearest integer (half away from zero).
This is used when downscaling a binary-fixed-point mantissa.

