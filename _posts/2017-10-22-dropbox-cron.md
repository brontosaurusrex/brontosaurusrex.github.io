---
published: true
layout: post
date: '2017-10-22 13:10 +0200'
title: dropbox cron
---
Let's run dropbox python script (renamed from dropbox.py to dropbox), dropbox should start at midnight and stop at 1 am.

	0 0 * * * bin/dropbox start >/tmp/dbstdout.log 2>/tmp/dbstderr.log	
	0 1 * * * bin/dropbox stop >/tmp/dbStopstdout.log 2>/tmp/dbStopstderr.log