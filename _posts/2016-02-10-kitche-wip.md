---
published: true
layout: post
date: "2016-02-10 23:59 +0100"
title: kitsch wip
---

[![kitche_ps2.th.png](https://scrot.moe/images/2016/02/10/kitche_ps2.th.png)](https://scrot.moe/images/2016/02/11/kitche_ps2b.png)[![kitsch2_ps.th.png](https://scrot.moe/images/2016/02/11/kitsch2_ps.th.png)](https://scrot.moe/images/2016/02/11/kitsch2_ps.png)[![kitsch2_ps3.th.png](https://scrot.moe/images/2016/02/11/kitsch2_ps3.th.png)](https://scrot.moe/images/2016/02/11/kitsch2_ps3.png)[![kitsch2_ps4.th.png](https://scrot.moe/images/2016/02/11/kitsch2_ps4.th.png)](https://scrot.moe/images/2016/02/11/kitsch2_ps4.png)[![kitsch_combo.th.png](https://scrot.moe/images/2016/02/15/kitsch_combo.th.png)](https://scrot.moe/images/2016/02/15/kitsch_combo.png)

(cycles, no volumetric materials)

Example material node
![materialMix.png]({{site.baseurl}}/media/materialMix.png)

The more color variants could be probably achieved by using [object info](http://i.stack.imgur.com/Jbzml.png) and ramp nodes as drivers for colors.

edit: (info/random > ramp > mostly colors and texture scaling)

[![materiali2_ps.th.png](https://scrot.moe/images/2016/02/15/materiali2_ps.th.png)](https://scrot.moe/images/2016/02/15/materiali2_ps.png) 
[![materiali2_ps2.th.png](https://scrot.moe/images/2016/02/15/materiali2_ps2.th.png)](https://scrot.moe/images/2016/02/15/materiali2_ps2.png)

Unfortunatelly some of the cubes are crossing each other, which seems to be the native particles-generator behaviour, could be solved with some bullet-physics.

Also uniqueness is not achived, something went wrong with the combination of particles and random object nodes.

> The emitter and objects emitted can use different materials, selectable in the Render panel of Particle properties.
