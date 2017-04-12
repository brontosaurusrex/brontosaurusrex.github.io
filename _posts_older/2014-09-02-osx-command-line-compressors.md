---
id: 3420
title: osx command line compressors
date: 2014-09-02T23:30:37+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3420
permalink: /2014/09/osx-command-line-compressors/
categories:
  - Uncategorized
---
native

`tar -jcvf ./Desktop/test.tar.bz2 -C /Volumes/int_raid/brontosaurusrex_small/ffdrop/ ffdrop14dev_v12` (113.4 MB)

or 3rd party

`tar -cf ./Desktop/test.tar -C /Volumes/int_raid/brontosaurusrex_small/ffdrop/ ffdrop14dev_v12`
              
and
              
`xz -k test.tar` (81.5 MB)
              
or much better compression
              
`xz -9evk test.tar` (51 MB) < 2nd (keka gui can decompress is to tar for example) or `7za a test.7z test.tar` (71.6 MB)
              
or much better compression
              
`7za -mx9 a testmax.7z test.tar` (51.1 MB) < a winner, since 7za is standalone/portable/single cli binary. or just using finders compress on the tar file (121.5 MB)