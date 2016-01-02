---
published: true
title: Setting a custom subdomain for your Github pages using DigitalOcean DNS
layout: post
---
Github allows you [set a custom domain](https://help.github.com/articles/tips-for-configuring-a-cname-record-with-your-dns-provider/) for your Github pages sites. The first step is to configure a CNAME record with your DNS provider. The second, also the last step, is to create a CNAME file in the root of your Github pages directory.

##Setting up the DNS

If you are using Digital Ocean as your DNS provider, configuring a subdomain to point to your Github pages is easy. Login to your account, click on **DNS** and add  select your domain. You then click on **Add Record** and choose **CNAME** as the record type. 

![](http://i.imgur.com/vfPxx1w.png)

Next, enter the intended subdomain where you have the **Enter Name** and your Github page url in the **Enter hostname**. Here is an example pointing the subdomain [blog.payform.co](http://blog.payform.co) to [payform.github.io](http://payform.github.io):

![](http://i.imgur.com/46Usnsn.png)

##Updating the CNAME file
You need to create a **CNAME** (uppercase, no extension) file in the root of your Github page directory. The easy way is to [login to Tinypress](https://tinypress.co/login),  go to **Settings** and in the *Custom Domain* section, enter your new subdomain and update.

![](http://i.imgur.com/tmFGNhw.png)

Or, you can go to the directory on Github and click the + icon beside the directory name to create a new file. You simply type the custom domain (e.g, blog.example.com. No http:// or https://).

![](http://i.imgur.com/mOw1TQ2.png)

Another way to do this via [Prose](http://prose.io). Login (via Github), go to the directory and create the CNAME file.

![](http://i.imgur.com/dgm3Y79.png)

With those two steps done, correctly, your subdomain should point to your Github page in no time. Github says it may take up 24 hours though.