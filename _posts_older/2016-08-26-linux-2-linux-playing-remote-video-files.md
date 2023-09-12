---
published: true
layout: post
date: '2016-08-26 11:04 +0200'
title: 'Linux 2 Linux, playing remote video files'
---
Silly way (complicated cli & no seeking)

    ssh remoteUser@remoteHost cat ~/videos/file.mp4 | mpv -

A good way, mount remote filesystem using sshfs

    cd
    mkdir i3remote # Just some folder, name it as you wish
    sshfs remoteUser@remoteHost:/remote/home/user/ /local/home/user/i3remote/
   