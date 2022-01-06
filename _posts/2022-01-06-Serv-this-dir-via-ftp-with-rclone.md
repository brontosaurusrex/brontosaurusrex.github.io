---
published: true
layout: post
date: '2022-01-06 13:54'
title: Serv this dir via ftp with rclone
tags: misc web luv 
---
As seen in [this thread](https://forums.bunsenlabs.org/viewtopic.php?pid=119726#p119726). 

    rclone -v serve ftp --addr 0.0.0.0:2121 --user ftp --pass ftp .
    # -v is for verbose
    # port 2121 is so the root is not needed for binding
    # . is for this dir
    
Rclone is a go app [https://rclone.org/downloads/](https://rclone.org/downloads).
