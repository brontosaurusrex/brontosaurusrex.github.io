---
published: true
layout: post
date: '2025-01-24 13:37'
title: Blurp last or middle frame or scene detected frames to tty, update 4
tags: cli bash video 
---
## Scripts

3 simple scripts to blurp [last](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/lastFrame) or [middle](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/middleFrame) or [scene detected](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrame) frames to tty.    
edit: There is also a version of [scene detected that generates some html](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrameMitHtml) < This is the hero version.

## Bug hunt (sceneFrameMitHtml)

edit: Known bugs: When the scene counter reaches 1000, things break. edit2: Most likely, almost certainly the bug is already at the ffmeg line:

    # first frame, I want as well
    ffmpeg -hide_banner -loglevel panic -i "$1" -vf "${crop}" -vframes 1 -pix_fmt rgb24 "$tmp/make/000.png" || exit
    
    # scene detect
    ffmpeg -hide_banner -loglevel info -nostats -i "$1" -threads 0 -vf "${crop},select=gt(scene\,0.4)",showinfo -pix_fmt rgb24 -vsync vfr "$tmp/make/%03d.png" 2> "$tmp/detect.log" >/dev/null &    
    pid="$!"

where %03d can obviously only host 999 numbers, duh. FIX THE SCRIPT.

edit3: Another bug was in this grep:

    var="$(grep "n: \+$frame " "$tmp/detect.log")"

but detect.log gaining 1000ths detection will actually not match (there is no space no more in front of the number), possible solution would be:

    # \s matches any whitespace chars (including newline, tab), and you can use * to match ZERO or more of them
    var="$(grep "n:\s*$frame " "$tmp/detect.log")";

Probably fixed.

## Demos & screenshots

lastFrame demo    
[![image-nohash-md](https://i.imgur.com/xTUyJTYl.png)](https://i.imgur.com/xTUyJTY.png)

sceneFrame demo  
[https://www.youtube.com/watch?v=VzYZWDprddI](https://www.youtube.com/watch?v=VzYZWDprddI)

p.s. Also tested with kitty term and seems to work fine  
[![image-nohash-md](https://i.imgur.com/MgIyOG0l.png)](https://i.imgur.com/MgIyOG0.png)

## scdet

There is another way to do scene detection using scdet filter,

    # help
    ffmpeg -h filter=scdet
    # example
    ffmpeg -i file.mxf -vf "scdet=threshold=0.2" -f null - 2> scdet.log 

which supposedly uses a different kind of detection. Untested.
Filter is not mentionied in ffmpeg docs due to experimental nature?

(This post and scripts were first posted 22. 6. 2022.)
