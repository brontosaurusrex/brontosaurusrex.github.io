---
published: true
title: Infinality and Debian Jessie
layout: post
---
This appears to actually work  
<http://www.neowin.net/forum/topic/1153268-installing-infinality-freetypefontconfig-in-debian-7/>

    git clone https://github.com/chenxiaolong/Debian-Packages.git
    cd Debian-Packages/

Install the build dependencies and tools needed to build the packages. first do: sudo apt-get install build-essential devscripts. next, run the following command and install the packages it lists using apt-get or synaptic  

    cd freetype-infinality/
    dpkg-checkbuilddeps
    cd ../fontconfig-infinality/
    dpkg-checkbuilddeps

Build the packages:  

    cd ../freetype-infinality/
    ./build.sh
    cd ../fontconfig-infinality/
    ./build.sh

Install the deb files:  

    cd ..
    sudo dpkg -i freetype-infinality/*.deb fontconfig-infinality/*.deb

You have to reboot to see any changes. If you want to customize the rendering you can:

    cd /etc/fonts/infinality
    sudo ./infctl.sh setstyle [yourpreferredstyle]
