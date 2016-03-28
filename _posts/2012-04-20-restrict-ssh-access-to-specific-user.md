---
id: 2040
title: restrict ssh access to specific user
date: 2012-04-20T20:41:47+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=2040
permalink: /2012/04/restrict-ssh-access-to-specific-user/
categories:
  - Uncategorized
---
You do this by adding a line like this to /etc/ssh/sshd_config

AllowUsers brontosaurus

then:
  
service ssh restart