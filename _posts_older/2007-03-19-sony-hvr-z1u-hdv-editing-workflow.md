---
id: 302
title: Sony HVR-Z1U HDV, editing workflow
date: 2007-03-19T13:31:55+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070319-063155
permalink: /2007/03/sony-hvr-z1u-hdv-editing-workflow/
categories:
  - video
---
1. ppro:  
select material that will go into final composit/edit  
export to lagarith or huff interemediate (1440&#215;1080 or something), preserve fields (make note on **field order!**)

2. make avisynth script using that export:

`file="izbira_prvi_del.avi"<br />a=converttoYUY2(directshowsource(file))<br />a=assumebff(a)<br />a=securedeint(a)<br />a=selecteven(a.LanczosResize(1280,720))<br />#  TRIM<br />#trim(startframe,endframe)<br />a=a.assumefps(25)<br />return(a)`

or better and faster using tdeint (as suggested by scharfis_brain):

`avisource("izbira_drugi_del.avi")<br />converttoyuy2()<br />bicubicresize(1280, 1080) # squeeze 1440 to 1280 to let lesser pixels bypass the deinterlacer<br />tdeint(type=3) # deinterlace<br />bicubicresize(1280, 720) # just downsize the image height from 1080 to 720 after deinterlacing.`

other options:  
<a href="http://forum.doom9.org/showthread.php?p=972725" target="_blank" >http://forum.doom9.org/showthread.php?p=972725</a>

3. encode into new lagarith or huff

4. import into new vegas 1280&#215;720 project

5. export as cineform  
(use cineform for editing, preview of compositing, for final export replace cineform with huff/lagarith file)