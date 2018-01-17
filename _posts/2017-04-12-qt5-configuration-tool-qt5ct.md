---
published: true
layout: post
date: '2017-04-12 08:47 +0200'
title: qt5 configuration tool - qt5ct
tags: linux
---
[https://fixmynix.com/change-qt5-application-style-with-qt5ct/](https://fixmynix.com/change-qt5-application-style-with-qt5ct/)  
[https://sourceforge.net/projects/qt5ct/](https://sourceforge.net/projects/qt5ct/)

> Qt4 based application style could be changed easily by qtconfig-qt4 tool, even by editing the Trolltech.conf file, but there is no such utility to change Qt5 theme, change qt5 widget style or fonts style.

fails to compile on Stretch so far  
[https://forums.bunsenlabs.org/viewtopic.php?pid=48956#p48956](https://forums.bunsenlabs.org/viewtopic.php?pid=48956#p48956)  
[https://github.com/mati75/qt5ct/issues/6](https://github.com/mati75/qt5ct/issues/6)

compile fixed, it also needs 

    sudo apt install qt5-style-plugins
    
to get gtk theme compatibility.

edit: Kvantum alternative  
[https://store.kde.org/content/show.php/Kvantum?content=166241](https://store.kde.org/content/show.php/Kvantum?content=166241)
