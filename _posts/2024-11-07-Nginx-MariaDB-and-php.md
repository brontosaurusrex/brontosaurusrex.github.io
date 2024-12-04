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

## wordpress

When you try to install a theme or plugin and wordpress asks you about your FTP credentials, add this line to wp-config.php

    define('FS_METHOD', 'direct');

## An example nginx virtual host with https
    
    server {

        listen 80;
        listen [::]:80;
        listen 443 ssl;
        listen [::]:443 ssl;

        ssl_certificate /etc/letsencrypt/live/mydomain.duckdns.org/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/mydomain.duckdns.org/privkey.pem;

        server_name mydomain.duckdns.org;

        root /var/www/html/mydomain.duckdns.org/wordpress;
        index index.php index.html index.htm;

        # Handle requests
        location / {
            try_files $uri $uri/ /index.php?$args;
            # Only if you want to lock out the world:
            auth_basic           "Who are you?";
            auth_basic_user_file /etc/apache2/.htpasswd;
        }

        # PHP processing
        location ~ \.php$ {
            include snippets/fastcgi-php.conf;
            # will depend on your php version
            fastcgi_pass unix:/run/php/php8.2-fpm.sock;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            include fastcgi_params;
        }

        # Deny access to .htaccess files
        location ~ /\.ht {
            deny all;
        }
    }
