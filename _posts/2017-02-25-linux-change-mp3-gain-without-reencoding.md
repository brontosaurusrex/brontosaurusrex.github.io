---
published: true
layout: post
date: '2017-02-25 14:42 +0100'
title: 'Linux, change mp3 gain without reencoding'
tags: audio
---
[https://hydrogenaud.io/index.php/topic,113702.msg936081.html#msg936081](https://hydrogenaud.io/index.php/topic,113702.msg936081.html#msg936081)

    ffmpeg -nostats -i file.mp3 -vn -filter_complex ebur128 -f null - 2>&1 | tail | grep I: | awk '{print $2}'

should echo integrated loudness (use that to calc the dB level needed for mp3gain to change). mp3gain does compile on Debian (just 'make').
