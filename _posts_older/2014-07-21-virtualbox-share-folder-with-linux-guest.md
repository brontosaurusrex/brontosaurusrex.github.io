---
id: 3311
title: virtualbox share folder with linux guest
date: 2014-07-21T23:19:35+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3311
permalink: /2014/07/virtualbox-share-folder-with-linux-guest/
categories:
  - Uncategorized
---
specifically: osx=host, linux mint=guest

use the virtualbox gui to define a shared folder, scrot

[<img src="http://b.pwnz.org/wp-content/uploads/2014/07/vbox_shared_folder.png" alt="vbox_shared_folder" width="589" height="390" class="aligncenter size-full wp-image-3312" />](http://b.pwnz.org/wp-content/uploads/2014/07/vbox_shared_folder.png)

add **existing** user to a vbox group named **vboxsf**, if user name is **testuser**;

<pre>sudo usermod -a -G vboxsf testuser</pre>

now the shared folder should automount (reboot) in 

<pre>/media/sf_Dropbox</pre>

linkage [https://www.virtualbox.org/manual/ch04.html#sf\_mount\_auto](https://www.virtualbox.org/manual/ch04.html#sf_mount_auto)