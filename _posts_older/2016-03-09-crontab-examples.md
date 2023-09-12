---
published: true
layout: post
date: "2016-03-09 09:56 +0100"
title: crontab examples
---

    # crontab to git pull brontosaurusrex.github.io (blog), everyday at midnight
    00 00 * * * cd /home/USER/source/brontosaurusrex.github.io && /usr/bin/git pull >/tmp/stdout.log 2>/tmp/stderr.log
