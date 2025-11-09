---
layout: default
lang: en
permalink: /en/systems/langford/
alt_url:  /pl/systemy/langford/
title: Langford Attractor
---


{% include systems_subnav_en.html %}


<h1 class="attractor-title">Langford Attractor</h1>

<div class="attractor-hero">
  <div class="media-frame">
    <video 
      autoplay 
      loop 
      muted 
      playsinline 
      preload="metadata"
      width="100%"
      style="background: transparent;"
    >
      <source src="{{ '/assets/media/attractors/langford.webm' | relative_url }}?v=1" type="video/webm">
      Your browser does not support the video tag.
    </video>
  </div>
</div>


<pre class="eq-plain">
<b>Equations used in the Attractor Builder (Blender add-on):</b>
dx/dt = (z - b) * x - d * y
dy/dt = d * x + (z - b) * y
dz/dt = c + a * z - (z**3)/3 - (x**2 + y**2) * (1 + e * z)
<b>Parameters</b>:
| a = 0.95 | b = 0.7 | c = 0.6 | d = 3.5 | e = 0.25 |
<b>Simulation settings:</b>
Initial state: x₀ = 0.1, y₀ = 0.0, z₀ = 0.0
Method: RK4
Time Step (dt): 0.015
Steps: 15000
Burn-in: 300
Scale: 0.1
</pre>


#### Model details:
<!-- a) Context and historical background -->
<p>
The <b>Langford attractor</b> is a mathematical model of a chaotic system introduced by 
Canadian mathematician <b>William F. Langford</b> in 1984 during his studies of the 
interaction between <i>Hopf</i> and <i>hysteresis</i> bifurcations. 
It represents one of the earliest examples of how a system with smooth nonlinearities 
can give rise to <i>torus breakdown</i> and chaotic oscillations. 
Although this system is often misidentified as the <b>Aizawa attractor</b>, 
Langford’s publication predates Aizawa’s related work and provides the first formal definition of these equations. 
The original system proposed by Langford (1984) was as follows:
</p>

<!-- b) System of equations -->
<p class="mathline">\(\dot{x} = (z - \beta)x - \omega y\)</p>
<p class="mathline">\(\dot{y} = \omega x + (z - \beta)y\)</p>
<p class="mathline">\(\dot{z} = \mu + \alpha z - \tfrac{1}{3}z^{3} - (x^{2} + y^{2})(\ell + p z) + \varepsilon z x^{3}\)</p>

<!-- c) Parameters and interpretation -->
<p>
In this formulation, the parameters <i>μ</i>, <i>α</i>, and <i>β</i> define the basic dynamical balance 
and control the local stability of fixed points, 
while <i>ℓ</i> and <i>p</i> shape the toroidal structure of the flow. 
The parameter <i>ω</i> determines the rotational frequency, 
and <i>ε</i> introduces <i>non-axisymmetric</i> effects that gradually transform the torus 
into a chaotic attractor. 
Increasing <i>ε</i> causes the system to transition from quasi-periodic motion 
to fully developed chaos, a process now known as <b>torus breakdown</b>. 
</p>

<!-- d) Source -->
<p>
Langford, W. F. (1984). <i>Numerical studies of torus bifurcations</i>. 
Physica D: Nonlinear Phenomena, 10(1–2), 135–156. 
<a href="https://doi.org/10.1016/0167-2789(84)90115-1" target="_blank">
https://doi.org/10.1016/0167-2789(84)90115-1
</a>
</p>

