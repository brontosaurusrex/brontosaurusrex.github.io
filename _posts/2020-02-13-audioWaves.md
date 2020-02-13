---
published: true
layout: post
date: '2020-02-13 09:27'
title: audioWaves
tags: audio bash 
---
This is for adding some video to audio-only recordings

    #!/bin/bash

    # audioWaves

    # main
    while [ $# -gt 0 ]; do

        # Waves
        #ffmpeg -i "$1" -filter_complex "[0:a]showwaves=s=1280x720:mode=line,format=yuv420p[v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy "$1".mkv 

        # Histogram
        #ffmpeg -i "$1" -filter_complex "[0:a]ahistogram=s=1280x720:slide=scroll:scale=log,format=yuv420p[v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy "$1".mkv 
            
        # Histogram 2
        #ffmpeg -i "$1" -filter_complex "[0:a]ahistogram=s=1080x1920:dmode=separate:slide=scroll:scale=log:size=hd1080,format=yuv420p,transpose=2[v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy "$1".mkv 
        
        ffmpeg -i "$1" -filter_complex "[0:a]ahistogram=s=1080x1920:dmode=separate:slide=replace:scale=log,format=yuv420p,transpose=2[v]" -map "[v]" -map 0:a -c:v libx264 -c:a copy -r 25 "$1".mkv 
            
        shift

    done

[![mpv-shot0020.jpg-nglHqFbubUCoihD-md](https://images.weserv.nl/?url=https://i.imgur.com/MeQ0aaV.jpg)](https://images.weserv.nl/?url=https://i.imgur.com/MeQ0aaV.jpg)
