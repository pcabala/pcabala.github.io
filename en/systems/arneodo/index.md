---
layout: systems
lang: en
permalink: /en/systems/arneodo/
title: Arneodo Attractor
video: /assets/media/attractors/arneodo.mp4?v=1
---

<section class="sys-equations" markdown="1">

**Attractor Builder (Blender add-on)**<br>
<span class="u">Equations:</span><br>
`dx/dt = y` <br>
`dy/dt = z`<br>
`dz/dt = -a*x - b*y + c*x**3`<br>
<span class="u">Parameters:</span>  
| a = -5.5 | b = 3.5 | c = -1 | <br>
<span class="u">Simulation settings:</span>  
Initial state: x_0 = 0.1, y_0 = 0.0, z_0 = 0.0 <br>
Method: RK4 <br>
Time Step (dt): 0.015 <br>
Steps: 15000 <br>
Burn-in: 300 <br>
Scale: 0.1 <br>

</section>

<section class="sys-info" markdown="1">
**Model details**

This attractor shows a transition from periodic to chaotic behavior.
Mathematically, it originates from a third-order system with a cubic term in *x*.
Use this space for original formulas and narrative (you can use *italic* and **bold**).
</section>

<section class="sys-sources" markdown="1">
**References**  
Arneodo, A., Coullet, P., & Tresser, C. (1981).  
*A possible new mechanism for the onset of turbulence.*  
_Physics Letters A_, 81(4), 197–201.  
[DOI](https://doi.org/10.1016/0375-9601(81)90239-5)
</section>
