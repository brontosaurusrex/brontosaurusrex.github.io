---
published: true
layout: post
date: '2023-05-18 13:31'
title: Automagically Cut Silence In Premiere Pro
tags: video 
---
Using Audition, kinda complicated workflow:  
<https://www.youtube.com/watch?v=yxBNOehwOLg>

Alternative might be doing a script that uses ffmpeg and that generates some sort of edl.
[/2022/10/24/Split-by-Silence-ffmpeg](/2022/10/24/Split-by-Silence-ffmpeg)

Note: Neither old cmx3600 edl or newer final cut pro xml can't have captions/subtitles.

CMX3600 example:

    TITLE: edlTest
    FCM: NON-DROP FRAME

    001  AX       B     C        10:32:19:18 10:32:24:07 00:00:00:00 00:00:04:14 
    * FROM CLIP NAME: FILE NAME.mov

    002  AX       B     C        10:32:24:08 10:32:44:18 00:00:04:14 00:00:24:24 
    * FROM CLIP NAME: FILE NAME.mov

    003  AX       B     C        10:32:48:11 10:32:59:22 00:00:24:24 00:00:36:10 
    * FROM CLIP NAME: FILE NAME.mov

Using free Auto-Editor:  
<https://www.youtube.com/watch?v=Kvl6Y2dIDX0>  

> Auto-Editor is a command line application for automatically editing video and audio by analyzing a variety of methods, most notably audio loudness.

<https://github.com/WyattBlue/auto-editor>
