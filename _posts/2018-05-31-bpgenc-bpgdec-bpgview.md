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
    
or softlink or make install

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

