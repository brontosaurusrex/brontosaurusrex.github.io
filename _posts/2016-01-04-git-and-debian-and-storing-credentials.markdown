---
published: true
title: git and debian and storing credentials
layout: post
---
Run this inside your repo

    git config credential.helper store

Then push to the server once

    git push

The credentials you use to push to the server will get saved in ~/.git-credentials

Now this file is not readable by any other user, but still stores password as plain text.

a thread  
<http://stackoverflow.com/questions/2233590/is-there-a-way-to-make-git-remember-the-password-for-webdav-remotes>
