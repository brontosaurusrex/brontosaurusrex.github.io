---
published: true
layout: post
date: '2026-04-06 18:45'
title: HP 250 G6 Notebook PC (i3 cpu, 4 gigs of ram)
tags: linux 
---
Pop!_OS installed, Wi-Fi is trouble; this seems to solve it:

<https://www.reddit.com/r/pop_os/comments/13m6pmo/wifi_not_working_on_pop_os_2204_on_custom_pc>  
<https://wiki.debian.org/NetworkManager/iwd>

    1-Install iwd:
    sudo apt install iwd
    
    2-configure NetworkManager:
    open this: /etc/NetworkManager/NetworkManager.conf
    add this to it:
    [device]
    wifi.backend=iwd

    3-Stop NetworkManager and disable wpa_supplicant:
    sudo systemctl stop NetworkManager
    sudo systemctl disable --now wpa_supplicant
    sudo systemctl restart NetworkManager

    4- Restart the pc. 

neofetch

                 /////////////                user@pop-os
             /////////////////////            -----------
          ///////*767////////////////         OS: Pop!_OS 24.04 LTS x86_64
        //////7676767676*//////////////       Host: HP 250 G6 Notebook PC
       /////76767//7676767//////////////      Kernel: 6.18.7-76061807-generic
      /////767676///*76767///////////////     Uptime: 27 mins
     ///////767676///76767.///7676*///////    Packages: 1804 (dpkg)
    /////////767676//76767///767676////////   Shell: bash 5.2.21
    //////////76767676767////76767/////////   Resolution: 1920x1080
    ///////////76767676//////7676//////////   DE: COSMIC
    ////////////,7676,///////767///////////   Theme: adw-gtk3-dark [GTK3]
    /////////////*7676///////76////////////   Icons: Cosmic [GTK3]
    ///////////////7676////////////////////   Terminal: cosmic-term
     ///////////////7676///767////////////    CPU: Intel i3-6006U (4) @ 2.000GHz
      //////////////////////'////////////     GPU: Intel Skylake GT2 [HD Graphics 520]
       //////.7676767676767676767,//////      Memory: 2391MiB / 3829MiB
        /////767676767676767676767/////
          ///////////////////////////
             /////////////////////
                 /////////////

Runs quite slow (the GUI that is), but can decode HD H.265 video without a sweat.

[![image](https://thumbs2.imgbox.com/9a/e0/Ly7SwTD7_t.png)](https://images2.imgbox.com/9a/e0/Ly7SwTD7_o.png)
