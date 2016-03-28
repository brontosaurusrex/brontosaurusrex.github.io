---
id: 2663
title: Linux.Encoding.install.sh
date: 2013-07-08T01:40:49+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2663
permalink: /2013/07/linux-encoding-install-sh/
categories:
  - Uncategorized
---
<https://sites.google.com/site/linuxencoding/install-script>

_Linux.Encoding.install.sh is a bash script designed to install the latest git versions of FFmpeg, libx264 and libvpx, and the latest release versions of libmp3lame, libvo-aacenc and libvorbis. It also installs the latest version of yasm to better optimize libx264, libvpx and FFmpeg_

fix: you need to add
  
`--extra-ldflags="-ldl"`
  
to the ffmpeg ./configure part of the script or will not build. This is due to the new way x264 is dynamically loading opencl stuff.