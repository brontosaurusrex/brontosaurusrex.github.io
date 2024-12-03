---
published: true
layout: post
date: '2024-11-07 18:26'
title: Nginx, MariaDB and php
tags: linux cli 
---
> The LEMP stack consists of Linux, Nginx, MySQL, and PHP. It is similar to the LAMP stack, but instead of using the Apache web server, it uses Nginx instead.

[https://docs.vultr.com/how-to-install-nginx-mariadb-php-lemp-on-debian-10](https://docs.vultr.com/how-to-install-nginx-mariadb-php-lemp-on-debian-10)

> You can restrict access to your website or some parts of it by implementing a username/password authentication.

[https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication)

## Lessons learned

 - This takes 10 times more time than 3 times the original plan you planned for.
 - Make stuff https (certbot is in repos), if this is staging server that other people will access (chrome is annoyed by http).
 - Test stuff using curl, chrome will cache way to much
 - When router NAT redirections are not working as expected, turn the router off and on again.
 - I failed every install that wanted php composer for some reason (i did find -w at some point)

## certbot

To make it spit where the pem stuff is, use

    sudo certbot certificates

## An example nginx virtual host with https

    copy/paste here. 
