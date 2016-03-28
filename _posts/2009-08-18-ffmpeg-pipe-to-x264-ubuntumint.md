---
id: 34
title: ffmpeg pipe to x264 (ubuntu/mint)
date: 2009-08-18T23:23:58+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry090818-162358
permalink: /2009/08/ffmpeg-pipe-to-x264-ubuntumint/
categories:
  - guide
---
example:  
`ffmpeg -i M2U00256.MPG -r 25 -f rawvideo -pix_fmt yuv420p -|x264 - 720x576 --fps 25 -o file.264`

p.s. the ubuntu x264/ffmpeg repos are old, here is how to compile yourself;  
<a href="http://ubuntuforums.org/showthread.php?t=786095" target="_blank" >http://ubuntuforums.org/showthread.php?t=786095</a>  
about ffmpeg piping  
<a href="http://labs.divx.com/node/11681" target="_blank" >http://labs.divx.com/node/11681</a>

how to compile mp4box  
<a href="http://ubuntuforums.org/showthread.php?t=1215281" target="_blank" >http://ubuntuforums.org/showthread.php?t=1215281</a>