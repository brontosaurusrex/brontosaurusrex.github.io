---
published: true
layout: post
date: '2021-06-15 11:57'
title: Multichannel audio
tags: video audio 
---
## One 4x stereo > 8ch wav with sox

Assuming 4 audio stems and 1 video file and skipping incomprehensible ffmpeg docs, sox might work

    sox --combine merge 1.wav 2.wav 3.wav 4.wav out8ch.wav

Generates 8ch wav.

## Two remux

    ffmpeg -i video.mov -i out8ch.wav -c copy video8ch.mov
    # or to specifically ignore possible audio in video.mov
    ffmpeg -i video.mov -i out8ch.wav -c copy -map 0:v:0 -map 1:a:0 out8ch.mov

## MXF and EBU story

Is more complex in a way that 'channels' are stored as separated 'tracks' in the container and they may have certain meaning.  
[https://tech.ebu.ch/docs/r/r123.pdf](https://tech.ebu.ch/docs/r/r123.pdf) and SMPTE 377-1-2009 (for mxf).  
[https://github.com/CasparCG/Server/issues/144#issuecomment-49441377](https://github.com/CasparCG/Server/issues/144#issuecomment-49441377)  
> In Broadcast Industry, MXF SD format (like IMX50, DVC) use 1 single audio stream with 1 to 8 audio channels included (8 is the max allowed in one audio stream).
> For MXF HD Format (like XDCAMHD422, DVCPRO, AVC...) the standard configuration is one audio channel per audio stream. The SDI allow 16 audio channels so the common configuration is 16 audio streams of one mono audio channel.
> But you can find also MXF files with (for example) 4 streams and 2 channels or 1 stream of 2 channel and 1 stream with 6 channels,..., there is no fixed rules.
