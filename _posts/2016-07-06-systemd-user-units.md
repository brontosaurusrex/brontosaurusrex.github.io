---
published: true
layout: post
date: '2016-07-06 12:30 +0200'
title: systemd user units
---
[https://github.com/KaiSforza/systemd-user-units](https://github.com/KaiSforza/systemd-user-units)

> One of the most important things you can add to the service files you will be writing is the use of Before= and After= in the [Unit] section. These two parts will determine the order things are started. Say you have a graphical application you want to start on boot, you would put After=xorg.target into your unit. Say you start ncmpcpp, which requires mpd to start, you can put After=mpd.service into your ncmpcpp unit. 
