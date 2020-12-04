---
published: true
layout: post
date: '2019-01-17 10:40 +0100'
title: When tilers are good idea
tags: linux mine
---
[https://github.com/xhsdf/rtile](https://github.com/xhsdf/rtile)

> Ruby script for manual or automagic placement/tiling of windows.

Soft link to my user bin

    ln -s ~/source/rtile/rtile.rb tile
    
An openbox menu

    tile --all
    tile --cycle
    tile --swap
    tile --all-auto (active), tile --all-auto
    killall tile
    
Openbox keybind

    <!-- rtile all -->
    <keybind key="A-a">
      <action name="Execute">
        <command>tile --all</command>
      </action>
    </keybind>
    
[![rtile.png-ik7T8k2u0c3vetk-th](https://images.weserv.nl/?url=https://i.imgur.com/IcqMPPCb.png)](https://images.weserv.nl/?url=https://i.imgur.com/IcqMPPC.png)
