---
id: 2648
title: secure/harden ubuntu/debian server
date: 2013-06-30T17:37:58+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2648
permalink: /2013/06/secureharden-ubuntudebian-server/
categories:
  - Uncategorized
---
<http://www.thefanclub.co.za/how-to/how-secure-ubuntu-1204-lts-server-part-1-basics>

sudo apt-get install logwatch libdate-manip-perl
  
sudo logwatch | less

sudo apt-get install fail2ban
  
gksu geany /etc/fail2ban/jail.conf