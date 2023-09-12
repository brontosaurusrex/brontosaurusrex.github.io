---
published: true
layout: post
date: '2016-07-27 18:04 +0200'
title: lemonbar on Debian stable
---
sudo

    apt-get install libxcb-xinerama0-dev
    apt-get install libxcb-randr0-dev

user

	git clone https://github.com/LemonBoy/bar
    cd bar
    make
    
to be continued ...

minimum example, you need to pipe something in

	echo "hello" | ./lemonbar -b -p
    
should display a lil hello in SW.

Launcher (working, but probably not the way to go)

	echo "%{A:thunar &:}  thunar  %{A}" | ./lemonbar -p |  while read line; do eval "$line"; done &

	
