---
layout: default
lang: pl
permalink: /pl/systemy/langford/
alt_url:  /en/systems/langford/
title: Atraktor Langforda
---

{% include systems_subnav_pl.html %}


<h1 class="attractor-title">Atraktor Langforda</h1>

<div class="attractor-hero">
  <div class="media-frame">
    <video autoplay="true" loop="true" muted playsinline preload="metadata">
      <source src="/assets/media/attractors/langford.mp4?v=1" type="video/mp4">
    </video>
  </div>
</div>



<pre class="eq-plain">
<b>Równania użyte w dodatku Attractor Builder (Blender):</b>
dx/dt = (z - b) * x - d * y
dy/dt = d * x + (z - b) * y
dz/dt = c + a * z - (z**3)/3 - (x**2 + y**2) * (1 + e * z)
<b>Parametry</b>:
| a = 0.95 | b = 0.7 | c = 0.6 | d = 3.5 | e = 0.25 |
<b>Ustawienia symulacji:</b>
Stan początkowy: x₀ = 0.1, y₀ = 0.0, z₀ = 0.0
Metoda: RK4
Krok czasowy (dt): 0.015
Liczba kroków: 15000
Okres rozgrzewki (burn-in): 300
Skala: 0.1
</pre>

#### Szczegóły modelu:

<!-- a) Kontekst i tło historyczne -->
<p>
<b>Atraktor Langforda</b> to model układu dynamicznego o chaotycznym zachowaniu, 
opracowany przez kanadyjskiego matematyka <b>Willama F. Langforda</b> w 1984 roku 
w ramach badań nad interakcją między bifurkacjami <i>Hopfa</i> i <i>histerezy</i>. 
Układ ten stanowi jedno z pierwszych przykładów, w których gładkie nieliniowości prowadzą 
do powstania <i>torusa</i> oraz jego rozpadu w kierunku chaosu. 
Choć w literaturze często określa się go mianem <b>atraktora Aizawy</b>, 
oryginalny opis równań pochodzi właśnie z pracy Langforda z 1984 roku. 
Oryginalny układ równań przedstawia się następująco:
</p>

<!-- b) Układ równań -->
<p class="mathline">\(\dot{x} = (z - \beta)x - \omega y\)</p>
<p class="mathline">\(\dot{y} = \omega x + (z - \beta)y\)</p>
<p class="mathline">\(\dot{z} = \mu + \alpha z - \tfrac{1}{3}z^{3} - (x^{2} + y^{2})(\ell + p z) + \varepsilon z x^{3}\)</p>

<!-- c) Parametry i interpretacja -->
<p>
W tym ujęciu parametry <i>μ</i>, <i>α</i> i <i>β</i> określają lokalną stabilność układu 
oraz równowagę dynamiczną, natomiast <i>ℓ</i> i <i>p</i> odpowiadają za geometrię torusa. 
Parametr <i>ω</i> kontroluje częstotliwość obrotu, 
a <i>ε</i> wprowadza efekty <i>nieosiowosymetryczne</i>, 
które stopniowo przekształcają torus w chaotyczny atraktor. 
Wraz ze wzrostem wartości <i>ε</i> układ przechodzi od ruchu quasi-okresowego 
do w pełni rozwiniętego chaosu — zjawiska znanego obecnie jako <b>rozpad torusa</b>.
</p>

<!-- d) Źródło -->

<p>
Langford, W. F. (1984). <i>Numerical studies of torus bifurcations</i>. 
Physica D: Nonlinear Phenomena, 10(1–2), 135–156. 
<a href="https://doi.org/10.1016/0167-2789(84)90115-1" target="_blank">
https://doi.org/10.1016/0167-2789(84)90115-1
</a>
</p>

