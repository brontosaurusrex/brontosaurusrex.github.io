---
id: 1954
title: mount ssh location as drive on os x lion
date: 2011-12-03T22:49:06+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=1954
permalink: /2011/12/mount-ssh-location-as-drive-on-os-x-lion/
categories:
  - Uncategorized
---
1. **install** OSXFUSE with the **MacFUSE compatibility layer**
  
2. make a folder like /Users/localuser/some\_server\_sshfs
  
3. make a script like
  
`#!/bin/bash<br />
sshfs user@server.com:/home/user /Users/localuser/some_server_sshfs/`

save script as mountServer.command to some place, so it can be just double clicked.

sites:
  
<https://groups.google.com/forum/#!searchin/osxfuse-group/sshfs/osxfuse-group/GtdUZdDMNag/Ecv4o65BQ8kJ>
  
<http://osxfuse.github.com/>

sshfs binary that seems to work on lion:
  
</downloads/osx/sshfs/>