---
published: true
layout: post
date: '2016-11-01 14:30 +0100'
title: find avi or mkv or mp4 and give me some mediainfo
---
    find . \( -name *.mkv -o -name *.avi -o -name *.mp4 \) -exec mediainfo {} \+ | grep -E 'Complete name|Format/Info|Width|Height'
