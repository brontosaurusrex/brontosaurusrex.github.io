---
id: 87
title: x264 rd, changelog
date: 2008-11-05T11:49:35+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry081105-034935
permalink: /2008/11/x264-rd-changelog/
categories:
  - video, software
---
_commit c89bc900a3bf0d4c4c728ad378703970b4f14e18 r996  
Author: Jason Garrett-Glaser <darkshikari@gmail.com>  
Date: Tue Sep 30 18:34:56 2008 -0700</p> 

Rework subme system, add RD refinement in B-frames      
The new system is as follows: subme6 is RD in I/P frames, subme7 is RD in all frames, subme8 is RD refinement in I/P frames, and subme9 is RD refinement in all frames.      
subme6 == old subme6, subme7 == old subme6+brdo, subme8 == old subme7+brdo, subme9 == no equivalent      
&#8211;b-rdo has, accordingly, been removed. &#8211;bime has also been removed, and instead enabled automatically at subme >= 5.      
RD refinement in B-frames (subme9) includes both qpel-RD and an RD version of bime.</i>

<a href="http://mirror01.x264.nl/x264/changelog.txt" target="_blank" >http://mirror01.x264.nl/x264/changelog.txt</a>