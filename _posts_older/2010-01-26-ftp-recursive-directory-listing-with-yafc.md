---
id: 607
title: ftp recursive directory listing with yafc
date: 2010-01-26T09:42:38+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=607
permalink: /2010/01/ftp-recursive-directory-listing-with-yafc/
categories:
  - Uncategorized
---
1.
  
`sudo apt-get install yafc`
  
2. connect to the ftp server
  
`yafc proto://user:pass@server.com`
  
3.
  
`ls -R > filelist.txt`
   
(the filelist.txt will be writen localy)