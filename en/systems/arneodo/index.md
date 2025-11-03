---
lang: en
---

{% include systems_subnav_en.html %}

<h1 class="attractor-title">Arneodo Attractor</h1>

<div class="attractor-hero">
  <div class="media-frame">
    <video autoplay="true" loop="true" muted playsinline preload="metadata">
      <source src="/assets/media/attractors/arneodo.mp4?v=1" type="video/mp4">
    </video>
  </div>
</div>

<pre class="eq-plain">
<b>Equations used in the Attractor Builder (Blender add-on):</b>
dx/dt = y
dy/dt = z
dz/dt = -a*x - b*y + c*x**3
<b>Parameters</b>:
|a = -5,5 | b = 3,5 | c = -1 |
<b>Simulation settings:</b>
Initial state: x₀ = 0.1, y₀ = 0.0, z₀ = 0.0
Min Step: 0.000001
Max Step: 0.01
Steps: 15000
Burn-in: 1000
Scale: 0.2
</pre>

#### Model details:
<!-- a) Context / Kontekst -->
<p><i><TODO: brief historical context & application (2–3 sentences). Mention original author & year.></i></p>

<!-- b) (Optional) inline display of original equations can be added below if needed -->
<!--
<p class="mathline">\(\dot{x} = \dots\)</p>
<p class="mathline">\(\dot{y} = \dots\)</p>
<p class="mathline">\(\dot{z} = \dots\)</p>
-->

<!-- c) Parameters & interpretation / Parametry i interpretacja -->
<p><i><TODO: key parameters and qualitative behavior: periodic → quasi-periodic → chaos, sensitivity, geometry></i></p>

<!-- d) Source / Źródło -->
<p>Arneodo, A., Coullet, P., & Tresser, C. (1981).<i> A possible new mechanism for the onset of turbulence.</i> Physics Letters A, 81(4), 197–201.
 https://doi.org/10.1016/0375-9601(81)90239-5></p>