---
published: true
layout: post
date: '2017-02-11 00:38 +0100'
title: mpv simple slideshow
---
This will not allow you to jump to previous pic, mpv is not aware of multiple files

    mpv -fs --image-display-duration=12 *.jpg
    
To get a playlist

    ls *.jpg | mpv -fs --image-display-duration=12 --playlist=-
