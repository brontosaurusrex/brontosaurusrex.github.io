---
published: true
layout: post
date: '2025-01-02 20:40'
title: SFTPgo with nginx as reverse proxy
tags: web cli linux
---
![sftplogo](https://sftpgo.com/assets/img/logo.png)

Situtation: nginx running and already using few virtual hosts.  
Want: File sharing service similar to wetransfer, only interested in web browser drag/drop at the moment.

Install SFTPgo as instructed by their page, it should bind to 127.0.0.1:8080 by default?

Add a new virtual host to nginx that may look like this (mostly generated using chatgpt):

    server {
        server_name myfiles.duckdns.org;

        # Redirect HTTP to HTTPS
        return 301 https://$host$request_uri;
    }

    server {
        listen 443 ssl;
        server_name myfiles.duckdns.org;

        # file upload limit?
        client_max_body_size 5G;

        ssl_certificate /etc/letsencrypt/live/myfiles.duckdns.org/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/myfiles.duckdns.org/privkey.pem;

        # SFTPGo Web Interface (if applicable)
        location / {
            # reverse proxy
            proxy_pass http://127.0.0.1:8080;  # Replace with your SFTPGo Web UI port or backend API endpoint
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        # Additional configurations such as timeouts, logging, etc.
    }

Certbot must be used before that (since https is forced):

    sudo certbot -d myfiles.duckdns.org -m user@user.com --agree-tos --noninteractive --nginx --redirect
