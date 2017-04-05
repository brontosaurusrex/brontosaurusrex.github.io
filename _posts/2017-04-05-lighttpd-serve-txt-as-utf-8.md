---
published: true
layout: post
date: '2017-04-05 17:08 +0200'
title: lighttpd serve .txt as utf-8
---


In /etc/lighttpd/lighttpd.conf comment/disable

    #include_shell "/usr/share/lighttpd/create-mime.assign.pl"
    
and add something like

    mimetype.assign = (
      ".css" => "text/css; charset=utf-8",
      ".html" => "text/html; charset=utf-8",
      ".htm" => "text/html; charset=utf-8",
      ".js" => "text/javascript; charset=utf-8",
      ".text" => "text/plain; charset=utf-8",
      ".txt" => "text/plain; charset=utf-8",
      ".xml" => "text/xml; charset=utf-8"
    )
    
restart lighttpd

[http://stackoverflow.com/questions/29349348/specifying-charset-in-http-header-with-lighttpd](http://stackoverflow.com/questions/29349348/specifying-charset-in-http-header-with-lighttpd)
