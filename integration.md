---
title: Integration Methods
---

{% include nav.html %}
{% include mathjax.html %}

# Integration Methods

Brief notes you can expand:

## Fixed-step RK4 (Runge–Kutta 4)
- Good balance of accuracy/performance for smooth curves.
- Step size \( \Delta t \) typically in \(10^{-3}\)–\(10^{-2}\).

## Adaptive step (optional)
- Stabilizes stiff regions; more complex bookkeeping.

## Sampling & thinning
- Store every *k*-th sample or decimate the curve to control vertex count.
