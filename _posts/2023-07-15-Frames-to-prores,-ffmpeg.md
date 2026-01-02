---
published: true
layout: post
date: '2023-07-14 23:06'
title: Frames to prores, ffmpeg
tags: video mine luv 
---
Folder of pngs to prores mov:

    ffmpeg -f image2 -pattern_type glob -i "*.png" -c:v prores -pix_fmt yuv422p10le -an -r 25 noise.mov

chatgpt explainer:

- -f image2: Specifies the input format as a series of images.
- pattern_type glob: Uses a glob pattern to match the input files.
- -i "*.png": Specifies the input files to be processed. In this case, it uses a glob pattern to select all PNG files in the current directory.
- -c:v prores: Sets the video codec to ProRes.
- -pix_fmt yuv422p10le: Specifies the pixel format as yuv422p10le, which stands for 10-bit 4:2:2 YUV color space.
- -an: Disables audio recording, ensuring the output file won't contain any audio.
- -r 25: Sets the output frame rate to 25 frames per second.

edit 2025: Note that ffmpeg assumes input frame rate is 25, which may not be the case, for example if input frame rate is supposed to be 60, then:

    ffmpeg -framerate 60 -f image2 -pattern_type glob -i "*.png" -c:v prores -pix_fmt yuv422p10le -an -r 60 out.mov
