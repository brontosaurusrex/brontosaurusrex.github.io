---
published: true
layout: post
date: '2023-06-28 11:29'
title: Waveform with moving head via ffmpeg from audio file
tags: video mine 
---
Triggered by this thread: <https://hydrogenaud.io/index.php/topic,124316>.

## Main

Get the waveform image at dual HD resolution for example

	ffmpeg -i "music.m4a" -filter_complex "aformat=channel_layouts=mono,showwavespic=s=3840x2160:colors=999999" -frames:v 1 waveformbig.png

scale down

	ffmpeg -i waveformbig.png -vf "scale=w=1920:h=1080:flags=lanczos" waveform.png

compose with custom background, make sure bg is also 1920x1080

	ffmpeg -i bg.png -i waveform.png -filter_complex "overlay" comp.png 	

get the composed image to be the same length as audio

	ffmpeg -loop 1 -i comp.png -i music.m4a -acodec copy -shortest tmp.mp4

get the duration into variable

	duration="$(ffprobe -i tmp.mp4 -show_entries format=duration -v quiet -of csv="p=0")"
	echo $duration

ffmpeg, generate 2x200 px line

	ffmpeg -f lavfi -i color=c=white:s=2x200 -frames:v 1 overlay.png

Last

	ffmpeg -i tmp.mp4 -i overlay.png -filter_complex "[0:v][1:v]overlay=x='if(gte(t,0), -w+(t)*(main_w-overlay_w)/$duration, NAN)':y='(main_h-overlay_h)/2'" -c:a copy final.mp4

scrot: <https://i.imgur.com/YtrqzeH.png>

Notes: This can be a lot shorter and could make an interesting script. It appears as if head is not completely in sync with audio. The final container format may be MATROŠKA (mkv), since it supports wide variety of audio codecs (AAC, FLAC, mp3...), so audio transcoding may be omitted.

FIXME: 1. audio not exactly in sync with head, 2. use modern ffmpeg syntax.

## Misc

Overlay some text with font  
<https://fonts.google.com/specimen/Lacquer?query=Lacquer>

	wget https://github.com/Lacquer-Font/Lacquer/blob/master/fonts/ttf/Lacquer-Regular.ttf\?raw\=true -O font.ttf

	ffmpeg -i penguins.png -filter_complex "[0:v]scale=w=1920:h=1080,drawtext=text='Penguins - glade to glory':fontsize=45:fontfile=font.ttf:x=50:y=50:fontcolor=black:box=1:boxcolor=white@0.5[text]" -map "[text]" -c:v png -y text.png

gives

[![text-fs8.png-rBxuwNSwYn9geeG-md](https://i.imgur.com/TYpFHYTl.png)](https://i.imgur.com/TYpFHYT.png)

or for multiline text

	# replace
	text='Penguins - glade to glory'
	# with
	textfile=text.txt

Possibly good tmp storage for font.ttf would be

	"$HOME/.cache/audio2videoWaveform/font.ttf"

## Preliminary script

This takes the ideas ^, but it's a different beast:

<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/audio2videoWaveformNG>

Gives: <https://youtu.be/iMeYtMcmjug>
