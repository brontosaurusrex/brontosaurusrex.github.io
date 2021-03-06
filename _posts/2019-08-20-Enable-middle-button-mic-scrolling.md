---
published: true
layout: post
date: '2019-08-20 17:26'
title: Enable system-wide middle or right button mice scrolling
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

### Getting id's for scripting purposes

    xinput | grep -i "mouse" | grep -iE "id=[0-9]{1,3}" 
    
    ⎜   ↳ HP HP USB 1000dpi Laser Mouse           	id=9	[slave  pointer  (2)]
    ⎜   ↳ HP HP USB 1000dpi Laser Mouse Consumer Control	id=10	[slave  pointer  (2)]
        ↳ HP HP USB 1000dpi Laser Mouse Consumer Control	id=11	[slave  keyboard (3)]

    xinput | grep -i "mouse" | grep -iEo "id=[0-9]{1,3}" 
    
    id=9
    id=10
    id=11

    xinput | grep -i "mouse" | grep -iEo "id=[0-9]{1,3}" | grep -iEo "[0-9{1,3}"
    9
    10
    11
    
And test each id more precisely if it holds proper method

    xinput list-props 9 | grep "libinput Scroll Method Enabled" && echo "ok"
	libinput Scroll Method Enabled (289):	0, 0, 1
	libinput Scroll Method Enabled Default (290):	0, 0, 0
    ok

Interesting 'case' type of script  
[https://forums.bunsenlabs.org/viewtopic.php?pid=10771#p10771](https://forums.bunsenlabs.org/viewtopic.php?pid=10771#p10771)

### middleMice script

edit: And the actual [middleMice script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/middleMice).

### How about the right button

To use right-mouse button with openbox, disable this in rc.xml

    <!-- <mousebind action="Press" button="A-Middle">
    <action name="Lower"/>
    <action name="FocusToBottom"/>
    <action name="Unfocus"/>
    </mousebind> -->
    
and change this

    <mousebind action="Drag" button="A-Right">
        <action name="Resize"/>
    </mousebind>
      
to this

    <mousebind action="Drag" button="A-Middle">
        <action name="Resize"/>
    </mousebind>

Now alt+middle click is window resize.

In middleMice script define `button=3`.
