---
id: 1453
title: better to suck then to push, server backups
date: 2011-04-07T12:26:57+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1453
permalink: /2011/04/better-to-suck-then-to-push-server-backups/
categories:
  - Uncategorized
---
on backup server

> One other idea for large files is tar to std out and remsh to the remote host:
  
> tar cvf &#8211; filename | remsh hostname &#8220;cd /dir ; tar xvf -&#8220;

> rsh or remsh Command
  
> Executes the specified command at the remote host or logs into the remote host.