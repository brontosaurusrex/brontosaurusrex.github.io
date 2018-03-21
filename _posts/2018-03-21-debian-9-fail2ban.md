---
published: true
layout: post
date: '2018-03-21 23:39 +0100'
title: Debian 9 fail2ban
---
[https://www.vultr.com/docs/how-to-setup-fail2ban-on-debian-9-stretch](https://www.vultr.com/docs/how-to-setup-fail2ban-on-debian-9-stretch)

Basically (if you want to stick with port 22 for ssh and ssh is the only service protected by fail2ban)

    sudo apt install fail2ban
    sudo service fail2ban status

Show banned

    sudo cat /var/log/fail2ban.log | grep Ban
    # If any ip's are banned, that should also show in
    sudo iptables -L
    
Custom config

> On Debian, the default Fail2ban filter settings will be stored in both the /etc/fail2ban/jail.conf file and the /etc/fail2ban/jail.d/defaults-debian.conf file. Remember that settings in the latter file will override corresponding settings in the former one.

Do not edit this two ^ directly, instead provide */etc/fail2ban/jail.local* and store stuff there. For example to increase ban and search time

    [DEFAULT]
    bantime = 3600
    findtime = 3600
    
then

    # restart
    sudo service fail2ban restart
    
and

    # check the log
    sudo tail /var/log/fail2ban.log
    
could show

    fail2ban.jail      INFO    Initiated 'pyinotify' backend
    fail2ban.filter    INFO    Added logfile = /var/log/auth.log
    fail2ban.filter    INFO    Set maxRetry = 5
    fail2ban.filter    INFO    Set jail log file encoding to UTF-8
    fail2ban.filter    INFO    Set findtime = 3600
    fail2ban.actions   INFO    Set banTime = 3600
    fail2ban.filter    INFO    Set maxlines = 10
    fail2ban.server    INFO    Jail sshd is not a JournalFilter instance
    fail2ban.jail      INFO    Jail 'sshd' started
    fail2ban.actions   NOTICE  [sshd] Ban 58.218.201.189