---
published: true
layout: post
date: '2018-02-16 17:17 +0100'
title: planet simulation
tags:
  - blender
  - mine
---
![simulaPlanetsBlender.JPG]({{site.baseurl}}/media/simulaPlanetsBlender.JPG)

Note that this has almost nothing to do with reality, the 'moons' are not affecting each other gravitationaly, same for the two 'planets'. The 'force' however does resemble some gravitational properties. What is interesting is that it doesn't seem to be easy to make this thing 'stable' without some amount of 'flow' (air flow/eter?/black matter?).

blender file download  
[simulaRound3.zip](/blends/simulaRound3.zip)

[link to youtube here](https://youtu.be/0kbdKWVT7qw).

edit: Possibly better way to set this up is [described here](https://blender.stackexchange.com/questions/57090/how-do-i-make-two-objects-pull-toward-each-other-in-a-zero-gravity-scene), but it misses the part where force null object would have to be the same size as the parent object and force shape would have to be set to 'surface' (i think).

![surface.jpg]({{site.baseurl}}/media/surface.jpg)

Quote from that link:  

> To make the your rigid bodies attract in your scene (assuming you already added your rigid bodies), you need to do this for each object:  
> 1- Add a Force Field: In the 3d view, press ShiftA  Force Field  Force  
> 2- Make your object the parent of the Force Field: Shift + Right click on the Force Field, followed by your object (The order is important)  Ctrl+P  Parent  
> 3- Make sure your origin is on the center of mass of your object: Select your object, then in the tools panel, select Set origin  Center of mass  
> 4- Align the Force Field to your object: Click on your object  Shift+S  cursor to selected, Click on the Force Field  Shift+S  Selected to Cursor  
> 5- Modify the settings of the Force Field: In the properties panel physics tab, you can find the settings for the force field. By deafult, the strength is set to a positive value, which will push objects apart. To make them attract, input a negative value. Note that massive/distant objects will require a lot more strength to be effective.  
> Repeat this process for every object in your scene, and you will have your magnetic attraction the next time you click play.

edit2: Keep in mind that rotation [will not just happen here](http://curious.astro.cornell.edu/about-us/56-our-solar-system/planets-and-dwarf-planets/general-questions/218-why-do-planets-rotate-intermediate), since we are talking about rigid system, when in reality the mass is changing shape and "conservation of angular momentum" kicks in increasing rotational forces.

edit3 Could "conservation of angular momentum" be just faked/animated by making planet smaller (and keeping mass)? edit4: < Doesn't really show the rotational effect.
