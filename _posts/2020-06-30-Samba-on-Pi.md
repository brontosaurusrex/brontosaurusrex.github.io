---
published: true
layout: post
date: '2020-06-30 10:29'
title: Samba share on Pi
tags: linux 
---
[This](https://pimylifeup.com/raspberry-pi-samba/) on side of Pi and then on Windows side one can make a network drive.  
Example of such share, a writing at the bottom of smb.conf:

	[PiShare]
 	comment=Raspberry Pi Share
 	path=/home/pi/usbman/filmi
 	browseable=Yes
 	writeable=Yes
 	only guest=no
 	create mask=0777
 	directory mask=0777
 	public=no


One can read some wise words about 'guest only' and 'guest account' on [this page](https://www.samba.org/samba/docs/using_samba/ch09.html).

Note that by default **home dir** is exposed as well (read only), which is good for home setup, but not so nice for a more public utility. According to internet rumers the best way to disable that is to remove entire [homes] section in /etc/samba/smb.conf.

Note that if you want to share home fodler, you have to make such user a samba password

    sudo smbpasswd -a ticho

![samba logo](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Logo_Samba_Software.svg/1200px-Logo_Samba_Software.svg.png)
