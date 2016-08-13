---
id: 1693
title: '24 fps > 25 fps avisynth'
date: 2011-05-05T22:16:14+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1693
permalink: /2011/05/24-fps-25-fps-avisynth/
categories:
  - Uncategorized
---
<pre lang="avisynth">AssumeFPS(25, 1, true)                 # Convert frame rate to PAL, also adjust audio.
SSRC(48000)                            # Restore audio sample rate to a standard rate.</pre>