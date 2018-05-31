---
published: true
layout: post
date: '2018-05-31 10:25 +0200'
title: bpgenc bpgdec bpgview
tags:
  - linux
  - cli
---
[https://bellard.org/bpg/](https://bellard.org/bpg/)

Required for bpgview

	sudo apt-get install -y libsdl-image1.2-dev libsdl1.2-dev

then

	make
    
then

	cp bpgenc bpgdec bpgview ~/bin
    
or softlink or make install.

A simple one by one conversion script could look like

    #!/bin/bash

    # png to bpg

    # main 
    while [ $# -gt 0 ]; do

        basename=$(basename "${1}")     # basename                      file.avi
        ext="${basename##*.}"           # ext
        base="${basename%.*}"           # basename without extension    file
        dir=$(dirname "${1}")           # dir only
        
        # echo
        echo "$basename"
        
        # action
        bpgenc -lossless "$1" -o "$dir/$base".bpg
        
        
        shift

    done
    
## size

Original png

	png = 659 M

Default lossy mode (with alpha), like: bpgenc *.png

	bpg = 32 M
    
^ Blocky, blurry, useless
    
Lossles bpg, like bpgenc: -lossless *.png

    lossless bpg = 643 M (oops)
    
^ Not much better than png

Another lossy mode with 444 chroma, like: bpgenc -f 444 *.png

	444 bpg = 42 M
    
^ Blocky, blurry, useless

like: bpgenc -f 444 -q 12 *.png (slow)

	444 -q 12 bpg = 221 M

^ Looks kinda good, but at this size still useless

There is no crf like mode as it seems, shame.



