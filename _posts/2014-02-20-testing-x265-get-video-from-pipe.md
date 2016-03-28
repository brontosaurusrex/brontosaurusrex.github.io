---
id: 2976
title: testing x265, get video from pipe
date: 2014-02-20T11:57:34+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2976
permalink: /2014/02/testing-x265-get-video-from-pipe/
categories:
  - Uncategorized
---
<pre>ffmpeg -r 24 -i big_buck_bunny_%05d.png -pix_fmt yuv420p -r 24 -f yuv4mpegpipe - 2> /dev/null | x265 --crf 20 -o bbb.hevc - --y4m</pre>

For mp4 muxing you can use l-smash (patched to support hevc).

notes;

<pre># video encoding
ffmpeg -r 24 -i big_buck_bunny_%05d.png -pix_fmt yuv420p -r 24 -f yuv4mpegpipe - 2> /dev/null | x265 --crf 26 -o bbb.hevc - --y4m

# audio encoding
ffmpeg -i BigBuckBunny-stereo.flac -c:a libfdk_aac -flags +qscale -global_quality 3 -afterburner 1 -vn bbbHIFI.m4a

ffmpeg -i BigBuckBunny-stereo.flac -c:a libfdk_aac -flags +qscale -global_quality 3 -afterburner 1 -f adts bbbHIFI.aac

# m4a to raw aac (if needed);
ffmpeg -i bbb.m4a -f adts -c:a copy out.aac

# muxing
muxer -i bbb.hevc?fps=24 -i out.aac -o bbb.mp4</pre>