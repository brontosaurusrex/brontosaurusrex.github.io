---
published: true
layout: post
date: '2017-09-11 19:02 +0200'
title: curl gmail
tags: cli web
---
    curl -u user@gmail.com --silent "https://mail.google.com/mail/feed/atom" > tmp.txt
    # will ask for password
    cat tmp.txt | xml2 | grep title= | cut -d "=" -f 2
    # will show spam as well
    
    # show titles
    curl -u user@gmail.com --silent "https://mail.google.com/mail/feed/atom" | xml2 | grep title= | cut -d "=" -f 2 | tail -12
    # or emails
    curl -u user@gmail.com --silent "https://mail.google.com/mail/feed/atom" | xml2 | grep email= | cut -d "=" -f 2 | tail -12
    # possible whitelist of important emails possible here

