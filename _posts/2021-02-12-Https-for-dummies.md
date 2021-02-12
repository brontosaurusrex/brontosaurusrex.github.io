---
published: true
layout: post
date: '2021-02-12 12:16'
title: Https for dummies
tags: web 
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=111260#p111260](https://forums.bunsenlabs.org/viewtopic.php?pid=111260#p111260)

## Notes

Install and run sudo certbot with proper command

    certbot certonly --webroot -w /home/pi/usbman/lightyroot -d my.sub.domain

Do some magic on the lighttpd.conf, mainly this at the bottom

    $SERVER["socket"] == ":443" {
      ssl.engine = "enable"
      ssl.privkey = "/etc/letsencrypt/live/my.sub.domain/privkey.pem"
      ssl.pemfile = "/etc/letsencrypt/live/my.sub.domain/fullchain.pem"
    }


