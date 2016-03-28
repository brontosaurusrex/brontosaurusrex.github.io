---
id: 3773
title: example osx cron that behaves well and does some logging
date: 2015-05-29T12:59:16+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3773
permalink: /2015/05/example-osx-cron-that-behaves-well-and-does-some-logging/
categories:
  - Uncategorized
---
`0 00 * * * /Users/b/bin/rsyncIntRaidToNapovedniki2.command >/tmp/stdout.log 2>/tmp/stderr.log "Runs at 00:00 every day"`