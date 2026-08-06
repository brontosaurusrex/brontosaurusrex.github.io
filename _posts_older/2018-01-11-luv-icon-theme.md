---
published: true
layout: post
date: '2018-01-11 18:58 +0100'
title: luv icon theme
tags:
  - linux
  - cli
  - misc luv
---
[https://github.com/Nitrux/luv-icon-theme](https://github.com/Nitrux/luv-icon-theme)

![](https://cdn.scrot.moe/images/2019/10/28/luv.png)

Quick and ugly dark version

    #Luv-dark
    cd
    mkdir source
    cd source || exit
    git clone https://github.com/Nitrux/luv-icon-theme
    cd luv-icon-theme || exit
    cp -r Luv Luv-dark
    cd Luv-dark || exit
    find . -name "*.svg" -exec sed -i 's/#4d4d4d/#f5f5f5/gI' {} \;
    sed -i 's/Name=Lüv/Name=Lüv-dark/g' index.theme
    sed -i 's/Inherits=/Inherits=Papirus-Dark/g' index.theme
    [[ -d $HOME/.icons ]] &&  mv ../Luv-dark ~/.icons


