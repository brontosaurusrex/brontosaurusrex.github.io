---
published: true
layout: post
date: '2022-10-06 09:42'
title: Keeping audio card non-idle (windows)
tags: misc audio 
---
    mpv av://lavfi:sine=frequency=1000:duration=0.1 --audio-stream-silence=yes --keep-open

Will produce short beep and infinitive silence.
