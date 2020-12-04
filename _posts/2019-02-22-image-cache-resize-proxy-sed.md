---
published: true
layout: post
date: '2019-02-22 17:31 +0100'
title: Image cache & resize proxy & sed
tags:
  - cli
  - web
---

    https://images.weserv.nl/?url=//

    from
    https://cdn.scrot.moe/images/2018/05/22/tilesRetro.md.png
    to
    https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/05/22/tilesRetro.md.png
    
    # sed -i 's/foo/bar/g' *

    sed -i 's/https:\/\/cdn.scrot.moe/https:\/\/images.weserv.nl\/?url=\/\/cdn.scrot.moe/g' *.md
    
According to git:
    
    170 files changed, 452 insertions(+), 432 deletions(-)
