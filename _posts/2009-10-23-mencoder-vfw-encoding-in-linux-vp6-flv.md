---
id: 19
title: mencoder, vfw encoding in linux, vp6, flv
date: 2009-10-23T17:42:42+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry091023-104242
permalink: /2009/10/mencoder-vfw-encoding-in-linux-vp6-flv/
categories:
  - video, guide
---
<a href="http://www.mplayerhq.hu/DOCS/HTML/en/menc-feat-video-for-windows.html" target="_blank" >http://www.mplayerhq.hu/DOCS/HTML/en/me &#8230; ndows.html</a>  
&#8212;  
to compile   
vfw2menc.c  
you will need also wine-dev installed (apt-get install wine-dev)  
&#8212;  
you will need to locate proper version of vp6vfw.dll (correct md5sum, see mplayer codecs packs on their website)  
&#8212;  
and compile latest mencoder with libmp3&#8230;

&#8230; to be continued

example bash:
  


> mencoder $1 -o $1.flv   
> -ovc vfw -xvfwopts codec=vp6vfw.dll:compdata=/home/superboki/vp6.mcf -oac mp3lame   
> -lameopts cbr:br=128 -af lavcresample=44100 -vf yadif,scale=576:320,flip   
> -of lavf</p>