---
published: true
layout: post
date: '2017-06-02 12:05 +0200'
title: ALSA master volume display in tint2 executor
tags: audio bash mine linux
---
    awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)
    # or without the percentage sign
    awk -F"[^0-9]*" '/dB/ { print $3 }' <(amixer sget Master)
    
[https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line](https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line)

Wanted

    --------------|---
    or
    ---------+---
    or
    ────────────│──
    or
    ────────────86──
    
## Solution

A bash script like [this printVolCont](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/bin/printVolCont), and [tint2rc like this](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/.config/tint2/tint2rc.printVolCont) (You will want latest tint2 version from git).

### Behaviour

Left of Right mouse click on it in tint2 will raise/lower volume by 5%.  
Mouse scroll up/down will raise/lower volume by 1%.  
Middle mouse click will toggle mute.

[https://forums.bunsenlabs.org/viewtopic.php?pid=52826#p52826](https://forums.bunsenlabs.org/viewtopic.php?pid=52826#p52826)  
[https://gitlab.com/o9000/tint2/blob/master/doc/tint2.md#executor](https://gitlab.com/o9000/tint2/blob/master/doc/tint2.md#executor)

[![printVolumeTint2Slider.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/05/31/printVolumeTint2Slider.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/05/31/printVolumeTint2Slider.png)
[![printVol2.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/05/31/printVol2.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/05/31/printVol2.png)
[![2017-06-02-175339_1920x1200_scrot.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/06/02/2017-06-02-175339_1920x1200_scrot.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/06/02/2017-06-02-175339_1920x1200_scrot.png)

changelog: Changed all the logic to continous, thanks to tint2 developer o9000.

## 2018 added Pulseaudio support

[https://forums.bunsenlabs.org/viewtopic.php?pid=69546](https://forums.bunsenlabs.org/viewtopic.php?pid=69546)
