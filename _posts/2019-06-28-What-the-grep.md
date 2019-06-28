---
published: true
layout: post
date: '2019-06-28 15:29'
title: What the grep
tags: linux bash 
---
### base

    s="what the s01e02 grep"
    echo "$s" | grep -iEo "[0-9]{02}"
    01
    02

-o, --only-matching

Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.

-i, --ignore-case

Ignore case distinctions in both the PATTERN and the input files.

-E, --extended-regexp

Interpret PATTERN as an extended regular expression (ERE, see below).

### better

    echo "$s" | grep -iEo "s[0-9]{02}|e[0-9]{02}" 
    s01
    e02

### all caps

    echo "$s" | grep -iEo "s[0-9]{02}|e[0-9]{02}" | tr '[:lower:]' '[:upper:]'
    S01
    E02
    
### single line
    
    echo "$s" | grep -iEo "s[0-9]{02}|e[0-9]{02}" | tr '[:lower:]' '[:upper:]' | tr -d '\n' && echo
    S01E02
