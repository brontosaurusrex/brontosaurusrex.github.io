---
id: 2650
title: 'bash, find the number of *.ext files in this folder and subfolders'
date: 2013-07-03T16:40:47+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2650
permalink: /2013/07/bash-find-the-number-of-ext-files-in-this-folder-and-subfolders/
categories:
  - Uncategorized
---
`find . -iname "*.ext" -printf . | wc -c`