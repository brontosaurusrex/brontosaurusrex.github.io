---
published: true
layout: post
date: '2018-08-25 14:03 +0200'
title: ffmpeg png sequence to prores mov
---
Assuming frames are named

    0001.png
    0002.png
    0003.png
    0004.png
    0005.png

then this should do the trick

	ffmpeg -i %04d.png -c:v prores -pix_fmt yuv422p -an -r 25 tetris9.mov
    
Cropping (keeping bottom part) from 1920x1200 to 1920x1080 ( 1200 - 1080 = 120 )
    
    ffmpeg -i %04d.png -filter:v "crop=1920:1080:0:120" -c:v prores -pix_fmt yuv422p -an -r 25 tetris9_1080p.mov -y

[pingpong](https://www.questarter.com/q/how-to-loop-a-video-back-and-forth-with-ffmpeg-2_1089525.html) 5 times
    
    ffmpeg -i tetris9_1080p.mov -filter_complex "[0]reverse[r];[0][r]concat,loop=2:6250,setpts=N/25/TB" -c:v prores tetris9_1080p_5x.mov
    # In loop=2:6250, 6250 is framerate (25) x length of input clip (250 frames in this case)
    
 Note: 
 
 	loop=1 will do ping-pong-ping-pong
 	loop=2 will do ping-pong-ping-pong-ping-pong
    
 That number (6250) could also be calculated automagically
 
    dur="$(mediainfo "--Inform=Video;%FrameCount%" tetris9_1080p.mov)"
    num=$(( dur * 25 ))
    echo $num