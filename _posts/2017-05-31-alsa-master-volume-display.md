---
published: true
layout: post
date: '2017-05-31 12:05 +0200'
title: alsa master volume display
---
    awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)
    
[https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line](https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line)

Wanted

    --------------|---