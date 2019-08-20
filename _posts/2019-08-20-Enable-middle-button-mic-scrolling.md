---
published: true
layout: post
date: '2019-08-20 17:26'
title: Enable middle button mice scrolling, system wide
tags: linux 
---
[https://askubuntu.com/questions/28150/chrome-chromium-middle-mouse-button-for-scroll-linux-mac](https://askubuntu.com/questions/28150/chrome-chromium-middle-mouse-button-for-scroll-linux-mac)

    xinput list
    
returns

    ⎡ Virtual core pointer                    	id=2	
    ⎜   ↳ Virtual core XTEST pointer              	id=4	
    ⎜   ↳ HP HP USB 1000dpi Laser Mouse         	id=9	
    ⎜   ↳ HP HP USB 1000dpi Laser Con. Control     id=10
    ⎣ Virtual core keyboard                   	id=3	
        ↳ Virtual core XTEST keyboard             	id=5	
        ↳ Power Button                            	id=6	
      ...

So it appears as if my mice is with id 9

    xinput list-props 9
                                 
    Device 'HP HP USB 1000dpi Laser Mouse':
	Device Enabled (147):	1
	libinput Natural Scrolling Enabled (286):	0
	libinput Natural Scrolling Enabled Default (287):	0
    ...
    
and

    xinput set-prop 9 "libinput Scroll Method Enabled" 0, 0, 1
    # This is button
    xinput set-prop 9 "libinput Button Scrolling Button" 2
    # This is middle mouse. Already 2 by default

This will not behave exactly like expected endless scrolling in browser, but close. Also this is valid system-wide.
