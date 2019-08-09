---
published: true
layout: post
date: '2019-08-08 22:33'
title: Tinyproxy
tags: linux 
---
### Server

    apt install tinyproxy
    
minimum config here, 

    grep "^Allow" /etc/tinyproxy/tinyproxy.conf
    Allow 127.0.0.1
    Allow 10.10.9.xxx # < This
    
### Clientele

Firefox  
[https://support.mozilla.org/en-US/kb/connection-settings-firefox](https://support.mozilla.org/en-US/kb/connection-settings-firefox)

Debian apt (WSL)  
[https://dev.to/david_j_eddy/windows-10-wsl-ubuntu-1804-proxy-configuration-for-apt-fhi](https://dev.to/david_j_eddy/windows-10-wsl-ubuntu-1804-proxy-configuration-for-apt-fhi)
