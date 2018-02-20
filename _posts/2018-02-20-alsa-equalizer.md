---
published: true
layout: post
date: '2018-02-20 11:35 +0100'
title: alsa equalizer
tags:
  - linux
  - audio
---
	sudo apt install libasound2-plugin-equal
    # reboot
    
in ~/.asoundrc

    pcm.!default {
            type plug;
            slave.pcm "plugequal";
    }
    ctl.equal {
        type equal;
    }
    pcm.plugequal {
        type equal;
        slave.pcm "plug:dmix";
    }
    
start eq with 

	alsamixer -D equal -g
    # -g is for colorless
