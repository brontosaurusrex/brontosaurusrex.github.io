---
published: false
layout: post
date: '2025-09-16 08:24'
title: 24 > 25 fps with ffmpeg
tags: video 
---
This will speed-up video and all tracks of audio, also reencodes the video, not working as expected:

    ffmpeg -i in.mov -r 25 -map 0 -c:v prores -filter_complex "[0:a]atempo=25/24[a]" -map "[a]" -c:a pcm_s24le out.mov

Not sure why video reencoding is needed. Somehow 9 audio tracks are generated (input is 8 track), assuming TC track got intermixed there.

p.s. How about without reencoding video? This one is NOT working as expected:

    ffmpeg -i in.mov -c:v copy -af "aresample=async=1" -c:a pcm_s24le -r 25 -map 0 out2.mov
