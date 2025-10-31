---
title: Lorenz System
---

{% include nav.html %}
{% include mathjax.html %}

# Lorenz

**Equations**
systems\index.md
\dot{x}=\sigma (y-x),\quad
\dot{y}=x(\rho - z)-y,\quad
\dot{z}=xy-\beta z.
systems\index.md

**Typical parameters**: \( \sigma=10,\ \rho=28,\ \beta=\tfrac{8}{3} \)

**Notes**
- Classic double-scroll “butterfly.”  
- Sensitive to initial conditions; dt and integrator choice impact smoothness and stability.
