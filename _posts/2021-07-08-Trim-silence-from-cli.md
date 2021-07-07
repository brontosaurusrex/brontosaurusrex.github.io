---
published: true
layout: post
date: '2021-07-08 00:28'
title: Trim silence from cli
tags: cli linux audio 
---
Trim all silence (0.5 seconds or longer)

    sox in.wav out.wav silence -l 1 0.1 1% -1 0.5 1%

[https://digitalcardboard.com/blog/2009/08/25/the-sox-of-silence/comment-page-2/](https://digitalcardboard.com/blog/2009/08/25/the-sox-of-silence/comment-page-2/)


Noise and dynamics reduction

    ffmpeg -i out.wav -af anlmdn=s=0.01,loudnorm=I=-8:LRA=5 -ar 48k out2.wav -y

[https://superuser.com/questions/733061/reduce-background-noise-and-optimize-the-speech-from-an-audio-clip-using-ffmpeg](https://superuser.com/questions/733061/reduce-background-noise-and-optimize-the-speech-from-an-audio-clip-using-ffmpeg)
