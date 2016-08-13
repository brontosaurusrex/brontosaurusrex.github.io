---
id: 702
title: 'linux ubuntu, share some folder(s) &#8211; (via pure-ftpd)'
date: 2010-03-15T20:21:42+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=702
permalink: /2010/03/linux-ubuntu-share-a-folder-via-pure-ftpd/
categories:
  - Uncategorized
---
1. each user may upload and delete its own files in that folder,
  
but not files from other users (thats where sticky bit &#8211; chmod 1777 &#8211; comes in)
  
`~/www/playdev $ sudo chmod 1777 movies/`
  
2. users are generally jailed to their home directories, so this common folder needs to be mounted to each user:
  
<http://download.pureftpd.org/pub/pure-ftpd/doc/FAQ>
  
for a user &#8216;ikob&#8217; that would be
  
`mkdir /home/ikob/play`
  
`mount --bind /var/www/playdev /home/ikob/play`
  
3. each user should have its general purpose web folder as well,
  
we will make this a subdir of new dir &#8216;files&#8217;
  
`mkdir /var/www/files`
  
`mkdir /var/www/files/ikob`
  
`sudo chmod 1777 /var/www/files/ikob/`
  
and &#8216;files&#8217; shall be mounted, so if there are more users, we will see their files in read-only mode &#8230; uf
  
`sudo mount --bind /var/www/files/ /home/ikob/files`
  
and should be same for other users &#8230;
  
`sudo mount --bind /var/www/files/ /home/boki/files`
  
or
  
3b. use groups, all this users should also belong to some group and the user folder, say /var/www/files/ikob should have read-only permission for that group &#8230;

IMPORTANT:

> Perform your mount command, then view the contents of /etc/mtab (through the text editor of your choice, or cat). There&#8217;ll be a line there that reflects how fstab and mtab expresses your mount. Copy that line and paste it in /etc/fstab.
> 
> To see if it worked, unmount your resource (share, disk, whatever), then do &#8216;mount -a&#8217; with root privileges. It should read fstab and remount it, and if it doesn&#8217;t, output a neat error message hopefully explaining why.