---
published: true
layout: post
date: '2023-09-11 21:08'
title: Upgrade Debian 11 (bullseye) to 12 (bookworm) without usrmerge errors
tags: linux cli 
---
## WSL1 -> WSL2

Following notes are for my 'WSL1/Debian cloned to WSL2/Debian' install.

Recommendation: 1st [clone the 11](/2023/09/11/How-would-you-go-about-cloning-a-WSL-distro/) and then upgrade the clone. Make sure the clone is WSL version 2 (otherwise expect problems with usrmerge).

In 11:

	cd
	ls -l / > state1.txt

Install 'usrmerge' in 11. As soon as it is installed it will run and warn that this is one way only process (can't be reversed automagically).

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

Now upgrayedd:

Probably delete anything in /etc/apt/sources.list

	sudo vi /etc/apt/sources.list

For my WSL2 needs it may look like:
	
	deb https://deb.debian.org/debian/ bookworm main
	deb https://deb.debian.org/debian/ bookworm-updates main
	deb https://deb.debian.org/debian/ bookworm-proposed-updates main
	deb http://security.debian.org/debian-security bookworm-security main
	deb https://deb.debian.org/debian bookworm-backports main

then

	sudo apt update && sudo apt dist-upgrade -y

few months later, cleanup

    sudo apt autoremove && sudo apt autoclean

optionally add something like 

	# info
	cat /etc/*-release | grep PRETTY | cut --delimiter="\"" -f2 | lolcat

to .zshrc or .bashrc.

## WSL1 -> WSL1 ?

If WSL1 to WSL1 is needed, the workaround could be to block usrmerge before update  
<https://askubuntu.com/questions/1358789/is-it-possible-to-prevent-usrmerge-package-installation-on-systems-upgraded-from>

Two files in /etc/apt/preferences.d

pin-usrmerge holds

    Package: usrmerge
    Pin: version *
    Pin-Priority: -1337

and the same for pin-usr-is-merged

    Package: usr-is-merged
    Pin: version *
    Pin-Priority: -1337
