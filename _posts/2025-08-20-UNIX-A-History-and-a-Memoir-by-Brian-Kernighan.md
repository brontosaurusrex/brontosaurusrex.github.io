---
published: true
layout: post
date: '2025-08-20 08:32'
title: UNIX
tags: linux 
---
A History and a Memoir by Brian Kernighan:  
<https://www.youtube.com/watch?v=WEb_YL1K1Qg>

What words can you make on a calculator if you hold it upside down? (31 minute of the video). On a modern Linux command is the same:

    grep '^[behilos]*$' /usr/share/dict/words | column

shall return around 190 words.

Copilot explanation of the grep command:

- grep: Searches for lines matching a pattern.
- '^[behilos]*$': This is the pattern being searched for.
- ^: Anchors the match to the beginning of the line.
- [behilos]*: Matches zero or more characters, each of which must be one of b, e, h, i, l, o, s.
- $: Anchors the match to the end of the line.
- /usr/share/dict/words: A file containing a list of English words (standard on many Unix-like systems).

