---
id: 12
title: ubuntu (jaunty) and osx
date: 2009-11-10T11:22:37+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry091110-032237
permalink: /2009/11/ubuntu-and-osx/
categories:
  - software
---
<a href="http://www.kremalicious.com/2008/06/ubuntu-as-mac-file-server-and-time-machine-volume/" target="_blank" >http://www.kremalicious.com/2008/06/ubu &#8230; ne-volume/</a>  
<a href="http://ubuntuforums.org/showthread.php?t=410274" target="_blank" >http://ubuntuforums.org/showthread.php?t=410274</a>

the actual install log: (you need to enable source repos first)
  


> mkdir ./netatalk  
> cd netatalk/  
> sudo aptitude install devscripts cracklib2-dev dpkg-dev libssl-dev  
> apt-get source netatalk  
> sudo apt-get build-dep netatalk  
> ls  
> cd netatalk-2.0.4~beta2/  
> DEB\_BUILD\_OPTIONS=ssl sudo dpkg-buildpackage -us -uc  
> sudo debi  
> sudo gedit /etc/default/netatalk   
> sudo gedit /etc/netatalk/afpd.conf   
> sudo gedit /etc/netatalk/AppleVolumes.default  
> sudo /etc/init.d/netatalk restart  
> sudo apt-get install avahi-daemon  
> sudo apt-get install libnss-mdns  
> sudo gedit /etc/nsswitch.conf  
> sudo gedit /etc/avahi/services/afpd.service  
> sudo /etc/init.d/avahi-daemon restart  
> sudo gedit /etc/netatalk/AppleVolumes.default  
> sudo /etc/init.d/avahi-daemon restart</p>


how about karmic? <http://freelancis.net/ressources/ubuntu/bonjour>