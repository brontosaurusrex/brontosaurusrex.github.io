---
id: 3037
title: allow wordpress web updates
date: 2014-03-29T19:48:21+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3037
permalink: /2014/03/allow-wordpress-web-updates/
categories:
  - Uncategorized
---
Basically all wp files must be owned by the process running the wp, this did the trick for me;

<pre>sudo chown -R www-user:www-user ./</pre>

Then go to your wp-admin and run the updates &#8230;