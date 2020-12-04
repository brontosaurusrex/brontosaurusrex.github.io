---
published: true
layout: post
date: '2018-02-24 17:47 +0100'
title: printWaveform
tags:
  - linux
  - mine
  - audio
  - cli
---
[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/printWaveform](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/printWaveform)

![printWaveform.png]({{site.baseurl}}/media/printWaveform.png)  

Usage

	# print and play
	printWaveform *.mp3
    # just print
    printWaveform np *.mp3

Half of waveform, enable the head part

    # print waveform, enable tail for half of the waveform
    img2txt -g 2 -b 2 -y 15 -W "$tw" -H "$thfinal" -f utf8 -d none "$tmpimg" | head -$(( th / 2)
    
[![scrot09777.png-bEbcvoKgxXS4ExA-md](https://images.weserv.nl/?url=https://i.imgur.com/EMg0BjRl.jpg)](https://images.weserv.nl/?url=https://i.imgur.com/EMg0BjR.jpg)
