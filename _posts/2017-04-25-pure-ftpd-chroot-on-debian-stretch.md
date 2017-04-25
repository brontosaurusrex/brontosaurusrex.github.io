---
published: true
layout: post
date: '2017-04-25 13:43 +0200'
title: pure-ftpd chroot on Debian Stretch
---
    sudo echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone
    systemctl restart pure-ftpd.service
    
if that fails, reboot. Now the users should be jailed to their $HOME.
