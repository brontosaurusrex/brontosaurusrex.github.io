---
id: 3632
title: fail2ban apache post-flood filter
date: 2014-12-09T20:44:30+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3632
permalink: /2014/12/fail2ban-apache-post-flood-filter/
categories:
  - Uncategorized
---
<http://klcollins.org/2013/09/fail2ban-love/>

I did is slightly differently, much more precise, add to jail.local;

<pre>[wp-xmldos]
enabled = true
filter = wp-xmldos
action = iptables-multiport[name=NoAuthFailures, port="http,https"]
logpath = /var/log/apache2/access.log
bantime = 1200
maxretry = 8
</pre>

add to ./filter.d/wp-xmldos.conf

<pre># WordPress brute force auth filter: /etc/fail2ban/filter.d/wp-xmldos.conf:
#
# Block IPs trying to dos xmlrpc.php
#
[Definition]
failregex = ^&lt;HOST> .* "POST /xmlrpc.php
ignoreregex =</pre>

restart fail2ban.

p.s. to test the filter;

<pre>fail2ban-regex /var/log/apache2/access.log /etc/fail2ban/filter.d/wp-xmldos.conf</pre>