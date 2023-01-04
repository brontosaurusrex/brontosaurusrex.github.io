---
published: true
layout: post
date: '2023-01-04 10:58'
title: Mpv - preview thumbnails
tags: video 
---
![scrot](media/thumbnailer.jpg)

The source

    git clone https://github.com/TheAMM/mpv_thumbnail_script
    # run
    concat_files.py cat_server.json
    concat_files.py cat_osc.json

Two new files with lua extension should appear

    mpv_thumbnail_script_server.lua
    mpv_thumbnail_script_client_osc.lua

This applies to windows 'portable' mpv install from here on. Make scripts fodler next to mpv.exe and copy the two new files in there

    scripts
    ├── mpv_thumbnail_script_client_osc.lua
    └── mpv_thumbnail_script_server.lua

Make lua-settings fodler and add a new conf file, like this

    lua-settings
    └── mpv_thumbnail_script.conf

Check the example in documentation and populate the conf as you wish, I have changed some

    autogenerate_max_duration=10600
    thumbnail_width=400
    thumbnail_height=400
    thumbnail_count=350
    min_delta=1
    max_delta=90

In mpv.conf add

    # thumbnail script stuff
    osc=no

To increase thumbnailing speed, duplicate the server lua script few times

    scripts
    ├── mpv_thumbnail_script_client_osc.lua
    ├── mpv_thumbnail_script_server-1.lua
    ├── mpv_thumbnail_script_server-2.lua
    └── mpv_thumbnail_script_server.lua

If the scripts don't wanna autorun on startup, the magic shortkey is 'T' (that is shift+t).


