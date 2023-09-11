---
published: true
layout: post
date: '2023-09-11 21:08'
title: Upgrade Debian 11 (bullseye) to 12 (bookworm) without usrmerge errors
tags: linux cli 
---
Following notes are for my WSL1/Debian install, but they may apply broadly.

In 11:

	cd
	ls -l / > state1.txt

Install 'usrmerge' in 11. As soon as it is installed it will run any warn that this is one way only process (can't be reversed automagically).

	apt install usrmerge
	# and say yes

	ls -l / > state2.txt

	cat state2.txt | grep -- "->"

should return bunch of symlinks now

	bin -> usr/bin
	lib -> usr/lib
	lib32 -> usr/lib32
	lib64 -> usr/lib64
	libx32 -> usr/libx32
	sbin -> usr/sbin

Now upgrejd:

Probably delete anything in /etc/apt/sources.list

	sudo vi /etc/apt/sources.list

For my WSL1 needs it may look like:
	
	deb https://deb.debian.org/debian/ bookworm main
	deb https://deb.debian.org/debian/ bookworm-updates main
	deb https://deb.debian.org/debian/ bookworm-proposed-updates main
	deb http://security.debian.org/debian-security bookworm-security main
	deb https://deb.debian.org/debian bookworm-backports main

then

	sudo apt update && sudo apt dist-upgrade

This will take forever.

To be continued, maybe.
