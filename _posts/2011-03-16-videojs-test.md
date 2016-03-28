---
id: 1308
title: videojs test
date: 2011-03-16T08:09:01+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1308
permalink: /2011/03/videojs-test/
categories:
  - Uncategorized
---
problems with implementation:
  
&#8211; ugly default skin (just my opinion)
  
&#8211; it doesn&#8217;t look the same in html5 and flash mode (i&#8217;d rather not have flash mode in that case at all) < bad default, wrong flash player - video is streched by default in flash mode, when it boxed in html5 mode (the correct way) < bad default - it doesnt provide any built-in means to embed size automagically, my php script does that for years now... - the url to video must be full, otherwise it will fail playback in flash mode < bad default, html5 version should have the same behaviour html5 problems: - chrome on windows doesn't seem to be any faster when decoding h.264 than flash - no fullscreen - the whole html5 idea suckors to the balls