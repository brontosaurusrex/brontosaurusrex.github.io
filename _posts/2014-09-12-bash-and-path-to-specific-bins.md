---
id: 3433
title: bash and $PATH to specific bins
date: 2014-09-12T21:26:55+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3433
permalink: /2014/09/bash-and-path-to-specific-bins/
categories:
  - Uncategorized
---
<pre>brontosaurusrex | so i should not use things like cmd="/path/to/command", whats the proper way?                                      
       sjohnson | huh?                                                                                                               
brontosaurusrex | I'am trying to store the path to some binary                                                                       
brontosaurusrex | and the use it like : $cmd stuff                                                                                   
             -- | kpease is now known as kpease_                                                                                     
     fr33load3r | !path > brontosaurusrex                                                                                            
        greybot | brontosaurusrex: The PATH variable defines where your commands are. Don't do stupid things like GREP=/usr/bin/grep;
                | $GREP foo bar. Just use grep foo bar in the first place. If you aren't sure what your PATH contains, set it        
                | yourself.                                                                                                          
        greycat | The proper way would be:   PATH=$PATH:/path/to                                                                     
brontosaurusrex | greycat: that would add to existing $PATH?                                                                         
        greycat | yes, obviously                                                                                                     
brontosaurusrex | and my bins will take priority always, since they are last set?                                                    
        greycat | If you want yours to be used first, then put it at the front, not the end.   PATH=/path/to:$PATH                   
brontosaurusrex | ok, thanks    </pre>

also x264 related: qtfaststart is not needed anymode, just use

<pre>-movflags faststart </pre>

with ffmpeg.