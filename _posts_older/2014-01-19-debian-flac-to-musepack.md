---
id: 2942
title: Debian, flac to musepack
date: 2014-01-19T22:33:48+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2942
permalink: /2014/01/debian-flac-to-musepack/
categories:
  - Uncategorized
---
<pre>#!/bin/bash

# flac to musepack
# requires flac, musepack-tools

# do I need this
shopt -s extglob

# set input to *.flac when null
(( $# )) || set -- *.@(flac); [[ -e $1 ]] || { echo "No flac files find in this dir."; exit 1; }

while [ $# -gt 0 ]; do


filename=$(basename "$1")
filebase="${filename%.*}"

echo "$filebase"

		mpcenc "$1" "$filebase".mpc
    
    shift
done
</pre>