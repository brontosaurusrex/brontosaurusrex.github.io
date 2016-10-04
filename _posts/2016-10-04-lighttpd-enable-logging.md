---
published: true
layout: post
date: '2016-10-04 10:07 +0200'
title: lighttpd enable logging
---
    sudo lighttpd-enable-mod accesslog
    
and by default it should show up in /var/log/lighttpd/access.log

Other interesting mods are dir-listing and userdir (see /etc/lighttpd/conf-*)

