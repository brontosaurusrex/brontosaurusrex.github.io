---
id: 496
title: Disk space analyzers
date: 2010-01-05T12:53:42+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=496
permalink: /2010/01/disk-space-analyzers/
categories:
  - Uncategorized
---
<http://risto.kurppa.fi/2008/10/disk-space-analyzers/>

but this is the deal maker:

`sudo find / -type f -size +100000k`
  
(find stuff larger than)

to find out how much disk space a specific folder takes you may:
  
`du -hs /data/`