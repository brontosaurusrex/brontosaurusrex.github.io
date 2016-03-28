---
id: 208
title: 7zip, how to make self-extractable sfx archives (.exe)
date: 2007-09-28T17:11:53+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070928-101153
permalink: /2007/09/7zip-how-to-make-self-extractable-sfx-archives-exe/
categories:
  - guide
---
1. use resource hacker to change the icon in the 7z.sfx (optional)  
2. use a command line like:

`7za a -sfx7z.sfx d:/utility/totalwire/totalwire.exe @d:/utility/totalwire/makedistro.txt`

which means: creat sfx arhive using windows 7z.sfx gui extracter, using list of files found in d:/utility/totalwire/makedistro.txt  
3. there is no 3rd step :P