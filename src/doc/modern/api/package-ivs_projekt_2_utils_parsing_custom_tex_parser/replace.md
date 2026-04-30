---
title: "replace function"
description: "API documentation for the replace function from custom_tex_parser"
category: "Functions"
library: "custom_tex_parser"
outline: false
editLink: false
prev: false
next: false
---

# replace

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">replace</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">input</span></span><span class="member-signature-token">)</span></span></div></div>

Normalizes TeX input to match the expectations of `TeXParser`.

We wrap special constants like π and e so they behave like grouped atoms
during parsing (e.g., `{\\pi}` becomes `({\\pi})`).

