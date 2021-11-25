---
published: true
layout: post
date: '2020-02-05 12:18'
title: Lighttpd auth.backend htpasswd
tags: linux web 
---
Syntax for same user:pass file for multiple dirs (lighttpd.conf)

    server.modules += ("mod_auth", "mod_authn_file")
    auth.backend = "htpasswd"
    auth.backend.htpasswd.userfile = "/etc/lighttpd/.htpasswd/lighttpd-htdigest.user"
    auth.require = ( "/nap" =>
        (
        "method"  => "basic",
        "realm"   => "sup?",
        "require" => "valid-user"
        ),
    )
    auth.require += ( "/~ticho/nap" =>
        (
        "method"  => "basic",
        "realm"   => "sup?",
        "require" => "valid-user"
        ),
    )

Seriously?

To check validity of lighttpd.conf

    lighttpd -t -f lighttpd.conf

    WARNING: include-conf-enabled.pl is deprecated and slated for removal.
             Replace in lighttpd.conf with:
               include "/etc/lighttpd/conf-enabled/*.conf"

    Syntax OK

To generate new user:pass pair for inclusion into lighttpd-htdigest.user

    sudo apt install apache2-utils
    htpasswd -n username

Confusing [lighttpd docs here](https://redmine.lighttpd.net/projects/lighttpd/wiki/Docs_ModAuth#htpasswd-mod_authn_file).
