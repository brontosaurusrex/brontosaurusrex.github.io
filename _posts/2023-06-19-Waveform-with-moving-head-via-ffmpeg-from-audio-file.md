---
published: true
layout: post
date: '2023-06-19 11:29'
title: Waveform with moving head via ffmpeg from audio file
tags: video mine 
---
Get the waveform image at dual HD resolution for example

	ffmpeg -i "music.m4a" -filter_complex "aformat=channel_layouts=mono,showwavespic=s=3840x2160:colors=999999" -frames:v 1 waveformbig.png

scale down

	ffmpeg -i waveformbig.png -vf "scale=w=1920:h=1080:flags=lanczos" waveform.png

compose with custom background, make sure bg is also 1920x1080

	ffmpeg -i bg.png -i waveform.png -filter_complex "overlay" comp.png 	

get the composed image to be the same leght as audio

	ffmpeg -loop 1 -i comp.png -i music.m4a -acodec copy -shortest tmp.mp4

edit: shortest may not be the correct way to handle this (Perhaps get duration in one step and then use '-to duration' in next step) 

get the duration into variable

	duration="$(ffprobe -i tmp.mp4 -show_entries format=duration -v quiet -of csv="p=0")"
	echo $duration

ffmpeg, generate 2x200 px line

	ffmpeg -f lavfi -i color=c=white:s=2x200 -frames:v 1 overlay.png

Last

	ffmpeg -i tmp.mp4 -i overlay.png -filter_complex "[0:v][1:v]overlay=x='if(gte(t,0), -w+(t)*(main_w-overlay_w)/$duration, NAN)':y='(main_h-overlay_h)/2'" -c:a copy final.mp4

scrot: <https://i.imgur.com/YtrqzeH.png>

Notes: This can be a lot shorter and could make an interesting script. It appears as if head is not completely in sync with audio.
