---
published: true
layout: post
date: '2025-03-24 12:10'
title: STL to srt from cli
tags: cli bash linux 
---
## Debian

Install

    apt install python3-ttconv

Convert stl to srt subtitles

    ttconv convert -i test.stl -o test.srt

## Source

<https://github.com/sandflow/ttconv?tab=readme-ov-file>  

> ttconv is a library and command line application written in pure Python for converting between timed text formats used in the presentations of captions, subtitles, karaoke, etc.
