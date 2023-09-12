---
published: true
layout: post
date: '2017-10-22 13:24 +0200'
title: dropbox cron
tags: cli linux bash
---
[Dropbox provided](https://www.dropbox.com/help/desktop-web/linux-commands) python [dropbox.py](https://www.dropbox.com/download?dl=packages/dropbox.py) renamed to dropbox and stored to ~/bin. Dropbox should start at midnight and run to 1am.

	0 0 * * * bin/dropbox start >/tmp/dbstdout.log 2>/tmp/dbstderr.log
	0 1 * * * bin/dropbox stop >/tmp/dbStopstdout.log 2>/tmp/dbStopstderr.log
    
p.s. Slightly related, a [script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/droptoggle) to toggle dropbox.
