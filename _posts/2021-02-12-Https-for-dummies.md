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

## Cron renew job seems to be automagically created on Debian

    cat /etc/cron.d/certbot

edit: Actually systemd service seems to have priority

    systemctl status certbot
    ● certbot.service - Certbot
    Loaded: loaded (/lib/systemd/system/certbot.service; static; vendor preset: enabled)
    Active: inactive (dead) since Tue 2021-02-16 11:24:41 CET; 50min ago
        Docs: file:///usr/share/doc/python-certbot-doc/html/index.html
            https://letsencrypt.readthedocs.io/en/latest/
    Process: 12324 ExecStart=/usr/bin/certbot -q renew (code=exited, status=0/SUCCESS)
    Main PID: 12324 (code=exited, status=0/SUCCESS)