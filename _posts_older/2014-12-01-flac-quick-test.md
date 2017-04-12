---
id: 3617
title: flac, quick test
date: 2014-12-01T23:51:04+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3617
permalink: /2014/12/flac-quick-test/
categories:
  - Uncategorized
---
# FLAC, quick test

## machine

    CPU~Single core Intel Pentium 4 CPU (-HT-) clocked at 3192.032 Mhz Kernel~3.2.0-4-amd64 x86_64
    

## zz_ward, single album

### flac 1.2.1 -8 (wheezy repo)

    done in 0:01:18  
    size 276.4 MiB
    

### flac 1.3.1 -8 (static compile)

    done in 0:01:13    
    size 275.0 MiB
    

### flac 1.3.1 -8 (static compile),(parallel &#8211;gnu flac -8 {} ::: &#8220;$@&#8221;)

    done in 0:01:08
    size 275.0 MiB
    

### ape 3.99 insane (multimedia repo)

    done in 0:06:46  
    size 254.5 MiB
    

### wavpack 4.60 -xh (wheezy repo)

    done in 0:01:03  
    size 273,0 MiB
    

### wavpack 4.60 -xhh (wheezy repo)

    done in 0:01:18  
    size 268,0 MiB