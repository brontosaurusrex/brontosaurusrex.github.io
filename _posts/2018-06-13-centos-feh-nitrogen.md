---
published: true
layout: post
date: '2018-06-13 12:45 +0200'
title: CentOS 7 / Resolve 15
tags:
  - linux
  - video
---
## CentOS feh/nitrogen?  
[https://jdhao.github.io/2017/05/06/install-feh-image-viewer-on-centos/](https://jdhao.github.io/2017/05/06/install-feh-image-viewer-on-centos/)

## Resolve 15 / CentOS 7  
[![Screenshot-from-2018-06-13-13-53-20.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/13/Screenshot-from-2018-06-13-13-53-20.md.png)](https://scrot.moe/image/9Ee0Y)
[![Screenshot-from-2018-06-15-05-39-23.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/15/Screenshot-from-2018-06-15-05-39-23.md.png)](https://scrot.moe/image/9ET8Q)
[![Screenshot-from-2018-06-15-05-12-48.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/15/Screenshot-from-2018-06-15-05-12-48.md.png)](https://scrot.moe/image/9ERPn)
[![Screenshot-from-2018-06-14-13-48-33.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/15/Screenshot-from-2018-06-14-13-48-33.md.png)](https://scrot.moe/image/9EdDe)
[![Screenshot-from-2018-06-14-13-34-39.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/15/Screenshot-from-2018-06-14-13-34-39.md.png)](https://scrot.moe/image/9E4Nu)
[![Screenshot-from-2018-06-15-05-43-55.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/06/15/Screenshot-from-2018-06-15-05-43-55.md.png)](https://scrot.moe/image/9E51v)

## Gpu utilization indicator in tint2

In tint2rc

    execp = new
    execp_centered = 1
    execp_has_icon = 0
    execp_command = gpu
    execp_continuous = 0
    execp_interval = 1
    execp_font = cuprum 12
    execp_font_color = #111111 70
    execp_padding = 0 0 0
    execp_tooltip = gpu

~/bin/gpu script

    nvidia-smi -q -d UTILIZATION | grep Gpu | grep -Eo "[0-9]{1,3}"
