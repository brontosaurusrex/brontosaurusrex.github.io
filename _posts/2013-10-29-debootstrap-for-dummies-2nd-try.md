---
id: 2734
title: debootstrap for dummies, 3rd try
date: 2013-10-29T19:12:03+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2734
permalink: /2013/10/debootstrap-for-dummies-2nd-try/
categories:
  - Uncategorized
---
<pre>deboostrap for dummies v3
-----------------------------
goal: host; wheezy/waldorf, chroot; sid
real goal: running aps that require never version of libc6, like "fadein".

# host
# ---------------
mkdir ~/apps/sid
cd ~/apps/sid
sudo debootstrap sid ./
    wait

sudo mount -o bind /proc ./proc
sudo mount -o bind /sys ./sys
sudo mount -o bind /dev/pts ./dev/pts

# chroot
# ---------------
sudo chroot ./
# and we are in
apt-get update
apt-get install locales dialog
dpkg-reconfigure locales
export LC_ALL=C LANGUAGE=C LANG=C

# app related
adduser sid
cd /tmp
wget http://www.fadeinpro.com/download/demo/fadein-linux-amd64-demo.deb
dpkg -i fadein...deb
apt-get -f install
    wait
# apt-get install arandr # hmmm, must I, this is pretty huge ~ 60 megs? &lt; edit: not needed
#   wait
exit
# restarting here
sudo chroot ./
su sid
cd ~
mkdir .fonts .themes .icons

# host
# ---------------
# adding host user .themes, .fonts and .icons to chroot
sudo mount ./.icons ~/apps/sid/home/sid/.icons/ -o bind
sudo mount ./.themes ~/apps/sid/home/sid/.themes/ -o bind
sudo mount ./.icons ~/apps/sid/home/sid/.icons/ -o bind

# chroot
# ---------------
fadein # should now start in its own screen

# pretty face
exit # to chroot root
apt-get install lxappearance
# copy your wanted waldorf ./themes to sid/.themes
# apt-get install gtk2-engines-murrine # if requested by theme
# apt-get install gtk2-engines-pixbuf  # if requested by theme
# apt-get install fonts-texgyre # this is an urw-gothic clone
# use " Tex Gyre Adventor" 10 font

</pre>

Actually all the mount things should go to /etc/rc.local to survive the reboot (without sudo), like;

<pre>mount /home/user/.themes /home/user/apps/sid/home/sid/.themes/ -o bind
mount /home/user/.icons /home/user/apps/sid/home/sid/.icons/ -o bind
mount /home/user/.fonts /home/user/apps/sid/home/sid/.fonts/ -o bind

mount -o bind /proc /home/user/apps/sid/proc
mount -o bind /sys /home/user/apps/sid/sys
mount -o bind /dev/pts /home/user/apps/sid/dev/pts</pre>

possible launcher

<pre>#!/bin/bash
# possible launcher
# /usr/local/bin/fadein_launch

if [ "$UID" -ne "0" ]; then
    echo "You don't have sufficient privileges to run this script."
    exit 1
fi



chroot /home/user/apps/sid/ su - sid -c "fadein"
  

</pre>

or/and fadein dekstop entry (/usr/share/applications/fadein.desktop)

<pre>[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Icon=fadein
Categories=Office;
Exec=gksudo 'chroot /home/user/apps/sid/ su - sid -c "fadein"'
MimeType=application/x-fadein-document;
Name=Fade In Professional Screenwriting Software
GenericName=Screenwriting Software 
Comment=A complete application for writing motion picture screenplays.
</pre>

snap, fadein running in "sid chroot jail" on waldorf;

<img src="http://shrani.si/t/B/Pu/9Pwh9zi/2013-10-3013831270251920.jpg"</img></href> 

more; <http://crunchbang.org/forums/viewtopic.php?pid=341976>