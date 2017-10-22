---
published: true
layout: post
date: '2017-10-22 13:24 +0200'
title: dropbox cron
---
Dropbox provided dropbox.py renamed to dropbox and stored to ~/bin. Dropbox should start at midnight and run to 1am.

	0 0 * * * bin/dropbox start >/tmp/dbstdout.log 2>/tmp/dbstderr.log
	0 1 * * * bin/dropbox stop >/tmp/dbStopstdout.log 2>/tmp/dbStopstderr.log
