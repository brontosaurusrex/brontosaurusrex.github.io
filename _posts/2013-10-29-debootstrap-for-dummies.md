---
id: 2728
title: debootstrap for dummies
date: 2013-10-29T14:50:18+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2728
permalink: /2013/10/debootstrap-for-dummies/
categories:
  - Uncategorized
---
<pre>deboostrap for dummies

--------------------------

goal: Run apps that require never version on libc on wheezy/waldorf (fadein)
      or Running sid on wheezy.

--------------------------


host: (some info here https://wiki.debian.org/Debootstrap)

    apt-get install debootstrap xnest
    mkdir ~/apps/sid2
    sudo debootstrap sid /home/user/apps/sid2/
	wait	
    chroot /home/user/apps/sid2/

chroot:
    apt-get install mc nano locales
    adduser sid
    su sid
    cd ~
    wget http://www.fadeinpro.com/download/demo/fadein-linux-amd64-demo.deb
    exit 
    cd /home/sid
as root
    dpkg -i fadein...deb
    apt-get -f install
	wait
    
host:
    Xnest -ac :1
    
chroot:
as root
    apt-get install arandr
    exit
to restart session
    chroot /home/user/apps/sid2/
    su sid
nano .bashrc , add export LANG=C
    exit
    su sid
    export DISPLAY=":1"
    fadein
voila

</pre>

edit: at the end I came up to the command (from host) that does everything;

<pre>chroot /home/user/apps/sid2/ su - sid -c "fadein"</pre>

but i have no clue how &#8230;