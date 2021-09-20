---
published: true
layout: post
date: '2021-09-20 10:52'
title: MPV copy current time as 25fps timecode
tags: video 
---
As seen [here](https://github.com/Arieleg/mpv-copyTime/blob/master/copyTime.lua), but assumes that input is 25fps

```lua
require 'mp'

local function set_clipboard(text)
    mp.commandv("run", "powershell", "set-clipboard", text);
end

local function copyTime()
    local time_pos = mp.get_property_number("time-pos")
    local time_in_seconds = time_pos
    local time_seg = time_pos % 60
    time_pos = time_pos - time_seg
    local time_hours = math.floor(time_pos / 3600)
    time_pos = time_pos - (time_hours * 3600)
    local time_minutes = time_pos/60
    time_seg,time_ms=string.format("%.03f", time_seg):match"([^.]*).(.*)"
    
    -- by me time in 25 frames
    time_ff = time_ms * 25 / 1000
    
    
    -- time = string.format("%02d:%02d:%02d.%s", time_hours, time_minutes, time_seg, time_ms)
    time = string.format("%02d:%02d:%02d:%02d", time_hours, time_minutes, time_seg, time_ff)
    mp.osd_message(string.format("Copied to Clipboard: %s", time))
    set_clipboard(time)    
end

mp.add_key_binding("Ctrl+f", "copyTime", copyTime)
```
    
Install: Copy to mpv/scripts/copyTime25TimeCode.lua
