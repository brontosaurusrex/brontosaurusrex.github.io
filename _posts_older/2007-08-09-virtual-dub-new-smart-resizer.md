---
id: 238
title: virtual dub new (smart?) resizer
date: 2007-08-09T18:52:24+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070809-115224
permalink: /2007/08/virtual-dub-new-smart-resizer/
categories:
  - video, software
---
using virtualdub172, the idea was to scale down from anamorphic 720&#215;576 / 16:9 pal clip to 1:1 computer screen AR:  
<img src="/images/vdub_new_resizer.png" width="452" height="365" border="0" alt="" />  
where we finally get:  
<img src="/images/vdub_new_resizer2.png" width="452" height="296" border="0" alt="" />

which seems to be the same as proposed by another tool (VideoSizeCalc):  
<img src="/images/vdub_new_resizer3_compared.png" width="359" height="550" border="0" alt="" />

edit: and here is GPled applet (no, i couldnt find source code&#8230;) that will actually generate some avisynth code:  
<a href="http://blog.somestuff.org/resizecalculator.htm" target="_blank" >http://blog.somestuff.org/resizecalculator.htm</a>

(source: <a href="http://www.animemusicvideos.org/guides/avtech/resizecalc.html" target="_blank" >http://www.animemusicvideos.org/guides/ &#8230; ecalc.html</a> )

the ugly theory:  
<a href="http://lipas.uwasa.fi/~f76998/video/conversion/" target="_blank" >http://lipas.uwasa.fi/~f76998/video/conversion/</a>  
and a little less ugly theory:  
<a href="http://www.transcoding.org/cgi-bin/transcode?Calculating_Frame_Size_And_Aspect_Ratio" target="_blank" >http://www.transcoding.org/cgi-bin/tran &#8230; pect_Ratio</a>