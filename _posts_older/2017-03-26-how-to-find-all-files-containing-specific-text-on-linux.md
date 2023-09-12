---
published: true
layout: post
date: '2017-05-19 18:12 +0200'
title: How to find all files containing specific text on Linux?
tags: cli linux
---
[http://stackoverflow.com/questions/16956810/how-to-find-all-files-containing-specific-text-on-linux](http://stackoverflow.com/questions/16956810/how-to-find-all-files-containing-specific-text-on-linux)

## grep

    grep -Ril "text-to-find-here" .

    i stands for ignore case (optional in your case).
    R stands for recursive.
    l stands for "show the file name, not the result itself".
    . stands for start directory
    
## ack

    # sudo apt install ack
    
    ack stuff
    
    # ignore a dir
    
    ack --ignore-dir _site stuff
    
![ack.png]({{site.baseurl}}/media/ack.png)

[https://forums.bunsenlabs.org/viewtopic.php?pid=51389](https://forums.bunsenlabs.org/viewtopic.php?pid=51389)

## sift (fast!!!)

    sift stuff
    
[https://sift-tool.org/download](https://sift-tool.org/download)
