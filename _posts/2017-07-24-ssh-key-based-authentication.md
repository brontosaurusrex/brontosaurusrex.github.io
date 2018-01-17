---
published: true
layout: post
date: '2017-07-24 18:52 +0200'
title: SSH Key-Based Authentication
tags: linux
---
### local machine

    ssh-keygen
    # enter, enter, enter
    # upload to remote
    ssh-copy-id username@remote_host
    
> The utility will connect to the account on the remote host using the password you provided. It will then copy the contents of your ~/.ssh/id_rsa.pub key into a file in the remote account's home ~/.ssh directory called authorized_keys.

[https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
