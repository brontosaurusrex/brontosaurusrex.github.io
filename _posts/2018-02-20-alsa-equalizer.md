---
published: true
layout: post
date: '2018-02-20 11:35 +0100'
title: alsa equalizer & loudnorm?
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
    
start eq gui with 

	alsamixer -D equal -g
    # -g is for colorless
	# or for instant gui
    # urxvt -e alsamixer -D equal -g
    
[https://www.alsa-project.org/main/index.php/Asoundrc](https://www.alsa-project.org/main/index.php/Asoundrc)  
[http://k.ylo.ph/2016/04/04/loudnorm.html](http://k.ylo.ph/2016/04/04/loudnorm.html) < loudnorm plugin in ffmpeg  
[http://vlevel.sourceforge.net/using/](http://vlevel.sourceforge.net/using/) < vlevel plugin using [LADSPA](https://www.ladspa.org/)  
