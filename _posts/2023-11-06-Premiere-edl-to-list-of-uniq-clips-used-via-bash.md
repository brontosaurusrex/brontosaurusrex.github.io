---
published: true
layout: post
date: '2023-11-06 20:24'
title: Premiere edl to list of uniq clips used (linux cli)
tags: video bash cli
---

    (grep '\*' | cut -d ':' -f 2 | cut -c 2- | sort | uniq) < test.edl

May return

    Black Video
    VID-20231102-WA0000.mp4
    VID-20231102-WA0001.mp4
    VID-20231102-WA0002.mp4
    VID-20231102-WA0003.mp4

as alias

    alias woot="(grep '\*' | cut -d ':' -f 2 | cut -c 2- | sort | uniq) <"

usage

    woot test.edl

