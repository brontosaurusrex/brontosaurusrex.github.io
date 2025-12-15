---
published: true
layout: post
date: '2023-09-28 10:58'
title: Mpv - thumbnail preview, update
tags: video 
---
## Option 1 (doesn't cache thumbs)
![scrot of option1](https://i.imgur.com/08keH7n.png)  

<https://github.com/po5/thumbfast>

Add/populate your mpv fodler like this:

    ├── script-opts
    │   └── thumbfast.conf
    ├── scripts
    │   ├── osc.lua
    │   └── thumbfast.lua

Profit.

edit 2025: Alternative UI-s that also support thumbfast:  
<https://github.com/eatsu/mpv-osc-youtube-ui>  
<https://github.com/tomasklaen/uosc>

## Option 2 (does cache thumbs)
![scrot](/media/thumbnailer.jpg)

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
    thumbnail_count=1350
    min_delta=0.1
    max_delta=90
    cache_directory=f:\cache\mpv_thumbs\

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

Cons: Can't get top part of the ui to show up on mouse over (that's the one with close icon X). This is quite cpu intensive, fan loud.

