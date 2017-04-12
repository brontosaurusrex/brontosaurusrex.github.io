---
id: 3245
title: bash, check for required commands, loop
date: 2014-06-26T21:21:52+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3245
permalink: /2014/06/bash-check-for-required-commands-loop/
categories:
  - Uncategorized
---
<pre>commands="/usr/bin/ffmpegthumbnailer /usr/bin/convert thing ffmpeg"
 
for i in $commands
do
    # command -v will return >0 when the $i is not found
	command -v $i >/dev/null && continue || { echo "$i command not found."; exit 1; }
done
</pre>

bash guide, pdf
  
<http://folk.ntnu.no/geirha/bashguide.pdf>