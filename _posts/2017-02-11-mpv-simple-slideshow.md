---
published: true
layout: post
date: '2017-02-11 00:38 +0100'
title: mpv simple slideshow
tags: video cli
---
This will not allow you to jump to previous pic, mpv is not aware of multiple files

    mpv -fs --image-display-duration=12 *.jpg
    
To get a playlist

    ls *.jpg | mpv -fs --image-display-duration=12 --playlist=-
    
or, better use find

    find . *.jpg | mpv -fs --image-display-duration=12 --playlist=-
    
edit: With OSX this will not show mpv gui on first image for some reason.
    
fade-in experiment using lavfi filters, not working well

    mpv *.jpg -fs -vf lavfi=[scale=1920:1080,fps=25,loop=650:1:0,fade=in:0:30]
