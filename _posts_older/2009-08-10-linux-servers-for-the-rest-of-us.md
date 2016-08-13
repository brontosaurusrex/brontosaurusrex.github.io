---
id: 35
title: linux servers for the rest of us
date: 2009-08-10T18:30:14+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry090810-113014
permalink: /2009/08/linux-servers-for-the-rest-of-us/
categories:
  - guide
---
goal: simple ftp/http/ssh linux server with multiple users which have their own html folders and they all share one 777 folder:

1. install linux mint or similar debian/ubuntu derivate (you can use virtualbox to install it as virtual os)

2. `sudo apt-get install lighttpd`

3. make some user, say user 'boki', make a new dir called 'public_html' in users root dir

4. enable the mod called userdir  
`sudo lighty-enable-mod userdir<br />sudo /etc/init.d/lighttpd force-reload`

at this point you should see <a href="http://localhost/~boki" target="_blank" >http://localhost/~boki</a>

5. we want to make a folder that is read/write to all the users, lets mkdir at /var/www/'all', then chmod it to 777

6. install ftp server  
`sudo apt-get install pure-ftpd`

7. install ftp client (for testing)  
`sudo apt-get install filezilla`

8. configure ftp server  
`su<br />echo "yes" >> /etc/pure-ftpd/conf/ChrootEveryone<br />/etc/init.d/pure-ftpd restart`  
this will basically jail all the users to their home dir and prevent them to browse throught the system

9. adding a read/write common folder to all of them  
symlinks wont work well, we have to mount one folder to another:  
`sudo mkdir /home/boki/all<br />sudo mount --bind /var/www/all /home/boki/all`

repeat the mounting for all the wanted users.

10. if you want &#8211; install ssh server and client  
`sudo apt-get install ssh<br />sudo apt-get isntall putty`  
(jail is of course only related to ftp, but the mounting-link works just like with ftp)

(this should work for lightpd 1.4.19 and linux mint 7 gnome edition)

links:  
<a href="http://download.pureftpd.org/pub/pure-ftpd/doc/FAQ" target="_blank" >http://download.pureftpd.org/pub/pure-ftpd/doc/FAQ</a>  
<a href="http://www.ubuntugeek.com/lighttpd-webserver-setup-with-php5-and-mysql-support.html" target="_blank" >http://www.ubuntugeek.com/lighttpd-webs &#8230; pport.html</a>  
<a href="http://www.cyberciti.biz/faq/stop-lighttpd-server/" target="_blank" >http://www.cyberciti.biz/faq/stop-lighttpd-server/</a>