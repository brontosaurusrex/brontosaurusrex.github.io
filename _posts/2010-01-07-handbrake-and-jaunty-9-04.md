---
id: 511
title: handbrake and jaunty (9.04)
date: 2010-01-07T12:02:42+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=511
permalink: /2010/01/handbrake-and-jaunty-9-04/
categories:
  - Uncategorized
---
<https://edge.launchpad.net/~handbrake-ubuntu/+archive/ppa>

notes:
  
0: repos

<pre lang="bash">deb http://ppa.launchpad.net/handbrake-ubuntu/ppa/ubuntu jaunty main
deb-src http://ppa.launchpad.net/handbrake-ubuntu/ppa/ubuntu jaunty main </pre>

1st: add those repos
  
`sudo nano /etc/apt/sources.list`
  
2nd: add the GPG keys
  
3rd:
  
`apt-get update`
  
`apt install handbrake-gtk handbrake-cli`
  
or if you can&#8217;t get the keys, then
  
`sudo apt-get --yes --quiet --allow-unauthenticated install handbrake-gtk handbrake-cli`

proof :P
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2010/01/handbrakeJaunty-300x199.png" alt="" title="handbrakeJaunty" width="300" height="199" class="alignnone size-medium wp-image-514" />](http://brontosaurusrex.69.mu/wp-content/uploads/2010/01/handbrakeJaunty.png)