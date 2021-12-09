---
published: true
layout: post
date: '2016-11-02 16:02 +0100'
title: Newest lighttpd in Debian Jessie
---
[https://debian.lighttpd.net/](https://debian.lighttpd.net/) < repo (All i wanted was client-side sort-by-date option in [dirlist](https://redmine.lighttpd.net/projects/lighttpd/wiki/Docs_ModDirlisting).)

And with some custom dirlist.css (put in default server root, like /var/www/html)

    @import url(http://fonts.googleapis.com/css?family=Raleway:200,400,600);
    body, html { background: #EEE; margin:0; }
    html { font: 18px/1.4 Raleway, 'Helvetica Neue', Helvetica, sans-serif; color: #2B2B2B; font-weight: 400; }
    
    h2 { font-weight: 200; font-size: 45px; margin: 20px 35px; }
    
    div.list { background: #EEE; padding: 20px 35px; }
    div.foot { color: #777; margin-top: 15px; padding: 20px 35px; }
    
    td { padding: 0 20px; line-height: 35px; white-space: nowrap; }
    
    tr:hover { background: #fff; }
    
    a { color: #111111; text-decoration: none; display: inline-block; width: 100%;  }
    a:visited { color: #666666; }
    a:hover { color: #000000; }
    
    td a { min-width: 300px; }
    
(modified version of [this](https://redmine.lighttpd.net/boards/3/topics/5418)).

And add to the lighttpd.conf (/etc/lighttpd/lighttpd.conf)

    # alternative dirlisting css https://redmine.lighttpd.net/boards/3/topics/5418
    dir-listing.external-css    = "/dirlist.css"
    
You get something pretty like

![](//cdn.scrot.moe/images/2016/11/02/lightDirList2.png)

[http://jsbin.com/tudigotopa/edit?html,css,output](http://jsbin.com/tudigotopa/edit?html,css,output)
