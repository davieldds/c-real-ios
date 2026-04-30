---
title: "halfUlpBiasMantissa function"
description: "API documentation for the halfUlpBiasMantissa function from bigint_helpers"
category: "Functions"
library: "bigint_helpers"
outline: false
editLink: false
prev: false
next: false
---

# halfUlpBiasMantissa

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">halfUlpBiasMantissa</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">scale</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">precision</span></span><span class="member-signature-token">)</span></span></div></div>

Computes half of a decimal ULP expressed in mantissa units for the given binary `scale`
and decimal `precision`. Returns zero when no bias is applicable.

