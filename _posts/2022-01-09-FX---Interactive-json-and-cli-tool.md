---
published: true
layout: post
date: '2022-01-09 18:12'
title: FX - Interactive json and cli tool
tags: misc 
---
[https://github.com/antonmedv/fx](https://github.com/antonmedv/fx)  
There is standalone binary. [Related tools](https://github.com/antonmedv/fx#related).   
<img src="https://camo.githubusercontent.com/1bdef90eaab60a00024adb27a167e2ccdf713869bdf186350299b42d36311f2d/68747470733a2f2f6d6564762e696f2f6173736574732f66782e676966" style="mix-blend-mode: multiply;">

Example, getting latest xkcd comics url

    curl -s https://xkcd.com/info.0.json | fx .img
