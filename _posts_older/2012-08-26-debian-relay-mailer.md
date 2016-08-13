---
id: 2346
title: debian relay mailer
date: 2012-08-26T20:29:22+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=2346
permalink: /2012/08/debian-relay-mailer/
categories:
  - Uncategorized
---
`` 
  
`gksu geany /etc/ssmtp/ssmtp.conf`

config file, ssmtp.conf:

<pre>#
# Config file for sSMTP sendmail
#
# The person who gets all mail for userids &lt; 1000
# Make this empty to disable rewriting.
root=your.mail@gmail.com

# The place where the mail goes. The actual machine name is required no 
# MX records are consulted. Commonly mailhosts are named mail.domain.com
UseTLS=YES
UseSTARTTLS=YES
mailhub=smtp.gmail.com:587
AuthMethod=LOGIN

AuthUser=sentmail@gmail.com
AuthPass=lozinka

FromLineOverride=YES

# Where will the mail seem to come from?
#rewriteDomain=

# The full hostname
hostname=kresnica

# Are users allowed to set their own From: address?
# YES - Allow the user to specify their own From: address
# NO - Use the system generated From: address
FromLineOverride=YES
</pre>

`sudo apt-get install mailutils`
  
testing
  
`sudo mail -s "hello there" your.mail@gmail.com`

(this seems to work, after testing nullmailer and postfix)