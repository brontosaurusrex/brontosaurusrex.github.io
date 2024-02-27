---
published: true
layout: post
date: '2024-02-27 19:31'
title: blurp last or middle frame or scene detected frames to tty, update 2
tags: cli bash video 
---
3 simple scripts to blurp [last](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/lastFrame) or [middle](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/middleFrame) or [scene detected](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrame) frames to tty.    
edit: There is also a version of [scene detected that generates some html](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrameMitHtml) < This is the hero version.

edit: Known bugs: When the scene counter reaches 1000, things break. edit2: Most likely, almost certainly the bug is already at the ffmeg line:

    # first frame, I want as well
    ffmpeg -hide_banner -loglevel panic -i "$1" -vf "${crop}" -vframes 1 -pix_fmt rgb24 "$tmp/make/000.png" || exit
    
    # scene detect
    ffmpeg -hide_banner -loglevel info -nostats -i "$1" -threads 0 -vf "${crop},select=gt(scene\,0.4)",showinfo -pix_fmt rgb24 -vsync vfr "$tmp/make/%03d.png" 2> "$tmp/detect.log" >/dev/null &    
    pid="$!"

where %03d can obviously only host 999 numbers, duh. FIX THE SCRIPT.

lastFrame demo    
[![image-nohash-md](https://i.imgur.com/xTUyJTYl.png)](https://i.imgur.com/xTUyJTY.png)

sceneFrame demo  
[https://www.youtube.com/watch?v=VzYZWDprddI](https://www.youtube.com/watch?v=VzYZWDprddI)

p.s. Also tested with kitty term and seems to work fine  
[![image-nohash-md](https://i.imgur.com/MgIyOG0l.png)](https://i.imgur.com/MgIyOG0.png)
