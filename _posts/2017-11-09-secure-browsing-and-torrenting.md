---
published: true
layout: post
date: '2017-11-09 09:46 +0100'
title: Secure browsing and torrenting
---
[https://forums.bunsenlabs.org/viewtopic.php?id=4348](https://forums.bunsenlabs.org/viewtopic.php?id=4348)

> Firejail is a SUID program that reduces the risk of security breaches by restricting the running environment of untrusted applications using Linux namespaces and seccomp-bpf. It allows a process and all its descendants to have their own private view of the globally shared kernel resources, such as the network stack, process table, mount table.

> Firejail can sandbox any type of processes: servers, graphical applications, and even user login sessions. The software includes security profiles for a large number of Linux programs: Mozilla Firefox, Chromium, VLC, Transmission etc. To start the sandbox, prefix your command with “firejail”

    firejail firefox                       # starting Mozilla Firefox
    
[https://firejail.wordpress.com](https://firejail.wordpress.com/)
