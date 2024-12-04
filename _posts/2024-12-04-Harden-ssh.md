---
published: true
layout: post
date: '2024-12-04 10:34'
title: Harden ssh
tags: cli linux 
---
<https://www.ezeelogin.com/blog/how-to-harden-ssh-server/>

 - Passwordless Authentication
 - disable root
 - custom port (disable 22)
 - Timeout for SSH Connections
 - Enable two-factor authentication for SSH (libpam-google-authenticator)
 - Fail2ban
 - and more ...

Changing the port from 22 still seem like a good practice:

<https://www.ibm.com/docs/en/aspera-fasp-proxy/1.4?topic=appendices-securing-your-ssh-server>
