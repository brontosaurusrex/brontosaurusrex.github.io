---
published: true
layout: post
date: '2018-06-24 22:44 +0200'
title: df for conky
tags:
  - linux
  - cli
  - bash
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=73939#p73939](https://forums.bunsenlabs.org/viewtopic.php?pid=73939#p73939)

See all there is

	df -h --output
    
Filter stuff (probably -t ntfs is a good idead here as well)

	df -h -t ext4 -t vfat -t fuse.sshfs --output=target,pcent | grep -v "boot"
    
could return

	Mounted on    Use%
	/              89%
	/home/b/pi     12%
	/media/b/data  44%
