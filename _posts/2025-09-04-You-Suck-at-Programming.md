---
published: true
layout: post
date: '2025-09-04 11:37'
title: You Suck at Programming
tags: bash 
---
video:  
<https://www.youtube.com/watch?v=r2rbAvXMcXQ>

source:  
<https://github.com/bahamas10/ysap/blob/main/code/2025-09-03-progress-bar-2/progress-bar>

Nice 'fatal' function imho:

    fatal() {
      echo '[FATAL]' "$@" >&2
      exit 1
    }
