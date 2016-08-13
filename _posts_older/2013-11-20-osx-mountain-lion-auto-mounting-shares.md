---
id: 2814
title: 'OSX Mountain Lion > auto mounting shares'
date: 2013-11-20T14:12:42+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2814
permalink: /2013/11/osx-mountain-lion-auto-mounting-shares/
categories:
  - Uncategorized
---
It appears that only normal way is to write custom shell script(s) for mounts and then drop them to your user startup. A script may look like:

<pre>mount_afp "afp://user:pass@host/folder" /Volumes/Raid/NETATALK/folder
or 
mount_smbfs "smb:// .... ect"
</pre>

note: Storing passwords in text files is a security risk.

[<img src="http://b.pwnz.org/wp-content/uploads/2013/11/MountainLionAutoMountShares-300x259.png" alt="MountainLionAutoMountShares" width="300" height="259" size-medium wp-image-2815" srcset="http://b.pwnz.org/wp-content/uploads/2013/11/MountainLionAutoMountShares-300x259.png 300w, http://b.pwnz.org/wp-content/uploads/2013/11/MountainLionAutoMountShares-1024x886.png 1024w" sizes="(max-width: 300px) 100vw, 300px" />](http://b.pwnz.org/wp-content/uploads/2013/11/MountainLionAutoMountShares.png)

edit: on server

add 

<pre># By default all users have access to their home directories.
~/			"kresnica"</pre>

to /etc/netatalk/AppleVolumes.default

add/change stuff in /etc/netatalk/afpd.conf like

<pre>- -tcp -noddp -uamlist uams_dhx.so,uams_dhx2_passwd.so -nosavepassword -setuplog "default log_info /var/log/afpd.log</pre>