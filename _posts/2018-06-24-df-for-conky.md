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

## df

See all there is

	df -h --output
    
Filter stuff (probably -t ntfs is a good idea here as well)

	df -h -t ext4 -t vfat -t fuse.sshfs --output=target,pcent | grep -v "boot"
    
could return

	Mounted on    Use%
	/              89%
	/home/b/pi     12%
	/media/b/data  44%
    
## General draw ascii bar function

    #!/bin/bash

    # ascii bar in percents

    # Mostly taken from:
    # http://mywiki.wooledge.org/BashFAQ/044

    # 1st parameter is percentage, 
    # 2nd is whatever you want printed on the right
    bar () {
        bar="|||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        barlength=${#bar}

        perc="$1"
        i=0

        while ((i < perc)); do

          n=$((i*barlength / 100))

          printf "\r%-${barlength}s" "${bar:0:n}"
          printf "$2"

          ((i += 1))

        done
        echo
    }

    bar 5 "10G free"
    bar 50 "100G free"
    bar 10 "45.5T free"
    bar 100 "woot"

should return

	||                                                       10G free
    |||||||||||||||||||||||||||                              100G free
    |||||                                                    45.5T free
    |||||||||||||||||||||||||||||||||||||||||||||||||||||||| woot
    
# dfascii (full script)

[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/dfascii](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/dfascii)

may return

                             free	 mount
    ||||||||||||||||||||     16G	 /
    ||                       1.6T	 /home/b/pi
    ||||||||||               491G	 /media/b/data
    