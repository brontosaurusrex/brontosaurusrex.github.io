---
id: 3977
title: git on debian, cache credentials
date: 2015-12-02T21:06:50+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3977
permalink: /2015/12/git-on-debian-cache-credentials/
categories:
  - Uncategorized
---
<https://help.github.com/articles/caching-your-github-password-in-git/>

<pre>git config --global credential.helper cache
# Set git to use the credential memory cache</pre>

To change the default password cache timeout, enter the following:

<pre>git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)</pre>