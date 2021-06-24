---
published: true
layout: post
date: '2021-06-15 11:57'
title: Multichannel audio
tags: video audio 
---
## Index
{:.no_toc}

* TOC
{:toc}

## 4x stereo > 8ch wav with sox

Assuming 4 audio stems and 1 video file and skipping incomprehensible ffmpeg docs, sox might work

    sox --combine merge 1.wav 2.wav 3.wav 4.wav out8ch.wav

Generates 8ch wav.

### remux

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

## Premiere pro
Has a pretty __tricky setup__ to get to the multitrack audio.

### the problem
Going from this stereo sequence:  
![from](/public/multi/fromThis.png)  
to this 8 channel sequence:  
![to](/public/multi/toThis.png)  
Requires making a new sequence with wanted output routing (This are all routed in a mono fashion, but weirdly can hold stereo-paired-as-imported clips...). Also check 'Output assignmenst': 

    1 = 1-2
    2 = 1-2
    3 = 3-4
    4 = 3-4 and so on 
    
edit: Assignmest can be also changed later in the 'Audio track mixer')  
![mixer](/public/multi/mixer.png)  
### the solution
__A. New sequence__  
![preset](/public/multi/preset.png)  
__B. Copy/paste that stereo sequence and duplicate each channel (omg)__  
![omg](/public/multi/omg.png)  
__C. And at this point things actually look like they are correctly routed already, ~~but just in case, select all odd tracks, rmb on track/Audio channels, disable all right channels (and disable left for the even tracks)~~__

__D. Export media - (MXF)__  
![export](/public/multi/export.png)  
If 'Separate mono tracks' is left unticked, output file will have just one 8 channel stream/track (which might be fine as well).

__E. The end.__

### Mono pair import?
Note: In premiere preferences there is also an option to always import stuff as mono pair, but that will imho make editing harder in most cases.  
![no](/public/multi/no.png)  

### Listening
Note2: Listening routing is also well hidden  
![listen](/public/multi/listen.png)  
![Listen all](/public/multi/listenAll.png)  

### Known unknowns
No idea how to make multichannel sequence/export where each stream will be stereo (8 channels of audio in 4x stereo for example).
