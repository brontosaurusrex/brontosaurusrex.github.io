---
published: true
layout: post
date: '2017-04-25 13:43 +0200'
title: pure-ftpd chroot on Debian Stretch
tags: linux
---
    sudo echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone
    systemctl restart pure-ftpd.service
    
if that fails, reboot. Now the users should be jailed to their $HOME. p.s. This assumes zero previous conf.

slightly related, adding yourself to [systemctl group](https://medium.com/@johannes_gehrs/getting-started-with-systemd-on-debian-jessie-e024758ca63d)

    usermod -a -G systemd-journal <your username>

    
