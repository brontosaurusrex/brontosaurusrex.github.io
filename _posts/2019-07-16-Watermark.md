---
published: true
layout: post
date: '2019-07-16 17:39'
title: Watermark
tags: 
---

Needs some work

    #!/bin/bash

    # watermark one image with another

    # usage: watermark back.png logo.png

    #http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782

    back="$1"
    logo="$2"

    pct=20            

    amt=$(convert -ping "$back" -format "%[fx:$pct*min(w,h)/100]" info:)
    convert "$back" \( $logo -resize $amt \) -gravity center -compose over -composite watermarked.png

[http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782](http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782)
