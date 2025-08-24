---
published: true
layout: post
date: '2025-08-20 08:32'
title: UNIX
tags: linux 
---
A History and a Memoir by Brian Kernighan:  
<https://www.youtube.com/watch?v=WEb_YL1K1Qg>

What words can you make on a calculator if you hold it upside down? (31 minute of the video). On a modern Linux, command is the same:

    grep '^[behilos]*$' /usr/share/dict/words | column

shall return around 190 words.

Copilot explanation of the grep command:

- grep: Searches for lines matching a pattern.
- '^[behilos]*$': This is the pattern being searched for.
- ^: Anchors the match to the beginning of the line.
- [behilos]*: Matches zero or more characters, each of which must be one of b, e, h, i, l, o, s.
- $: Anchors the match to the end of the line.
- /usr/share/dict/words: A file containing a list of English words (standard on many Unix-like systems).

## More

Ken Thompson interviewed by Brian Kernighan at VCF East 2019:  
<https://www.youtube.com/watch?v=EY6q5dv_B-o>  
> In the 1960s-1970s, Ken Thompson co-invented the UNIX operating system along with Dennis Ritchie at Bell Labs. He also worked on the language B, the operating system Plan 9, and the language Go. He and Ritchie won the Turing Award. He now works at Google. He’ll be interviewed by Brian Kernighan of “K&R” fame.
> 3 weeks away from an operating system

Brian Kernighan: UNIX, C, AWK, AMPL, and Go Programming | Lex Fridman Podcast:  
<https://www.youtube.com/watch?v=O9upVbGSBFo&t=265s>


