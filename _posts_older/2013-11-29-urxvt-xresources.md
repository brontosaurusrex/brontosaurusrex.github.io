---
id: 2844
title: urxvt .Xresources
date: 2013-11-29T02:01:44+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2844
permalink: /2013/11/urxvt-xresources/
categories:
  - Uncategorized
---
<pre>*.font: 	-*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*
*.boldFont:	-*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*

!URxvt.font:		-misc-fixed-*-r-*-*-13-*-*-*-*-*-*-*
!URxvt.boldFont:	-misc-fixed-*-r-*-*-13-*-*-*-*-*-*-*

!Urxvt*iconPixmap:/usr/share/pixmaps/openbox.xbm
!Urxvt*iconMask: /usr/share/pixmaps/openbox.xbm
!*.font: fixed:size=8

! FOR MONOSPACE 
!*.letterSpace:1

! FOR SOURCE SANS PRO
!*.letterSpace:-1

*.lineSpace: 2 
!*.lineSpace: 1 

URxvt.perl-ext-common:  default,matcher
URxvt*urlLauncher:/usr/bin/uzbl-tabbed 
URxvt*matcher.button:1 
Urxvt*matcher.pattern: \\bwww\\.[\\w-]\\.[\\w./?&@#-]*[\\w/-]
!URxvt*urgentOnBell:true
!URxvt*visualBell:true
URxvt.mapAlert: true
!URxvt*saveLines: 1024
!*.bellIsUrgent: true
*.colorBD:  #7d7875
*.colorIT:  #7d7875 

!Xft*dpi:	96
Xft*antialias:	true
Xft*hinting:	full	

URxvt.selection.pattern-0: ([[:word:]]+)
URxvt*secondaryscroll:  true
URxvt*scrollTtyOutput: false

! scroll in relation to buffer (with mouse scroll or Shift+Page Up)
URxvt*scrollWithBuffer: true

! scroll back to the bottom on keypress
URxvt*scrollTtyKeypress: true


URxvt*dynamicColors:    on
URxvt*depth:            24

Xcursor.theme: handhelds
Xcursor.size: 8

!URxvt*depth:32
!URxvt*transparent:	true
URxvt*shading:	       30	
URxvt*fading:		20
!URxvt.tintColor:     black
*.fadeColor:	#252525
!URxvt*fadeColor:	#383a3b
!URxvt*fadeColor:	#313131
!URxvt*fadeColor:	#3f3f3f
!URxvt*fadeColor:	#c9c9c9 
*.borderless:	true 
*.geometry: 84x15 
!*geometry: 80x18 

Urxvt*termName:     rxvt-unicode-256color
Urxvt*allow_bold:   false 
*.scrollBar: false

!URxvt*background:       	#111111
*background:       	#252525
!*background:       	#282828
!URxvt*background:        #1a1a1a	
!URxvt*background:       	#424242
!URxvt*background:       	#313131
!URxvt*background:       	#191716
!URxvt*background:       	[85]#1d1d1d
!URxvt*background:               #1d1d1d
!*background:               #383a3d
!*foreground:       	#7D7875
*.foreground:       	#999999
!URxvt*foreground:       	#d3d3d3
*.cursorColor:      #cc7511	
!*.colorBD:          	#BFBAB8
!URxvt*colorBD:          	#111111
!URxvt*colorUL:			#54838F
!URxvt*underlineColor:    	#181818
*.hightlightSection: 	true	
*.highlightColor:	#1a1a1a
*.highlightTextColor: #bf3f34
*.trimSelection: true 
*.scrollLines: 500

!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!    Gray           !!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!

!URxvt*background:  #c9c9c9
!URxvt*foreground:  #333333
!URxvt*cursorColor: #335A80

!Black
!URxvt.color0:  #000000
!URxvt.color8:  #424242

!Red
!URxvt.color1:  #294377
!URxvt.color9:  #566fb4

!Green
!URxvt.color2:  #9278ab
!URxvt.color10: #a08ba0

!Yellow
!URxvt.color3:  #a86c73
!URxvt.color11: #d0917f

!Blue
!URxvt.color4:  #51365c
!URxvt.color12: #424357

!Magenta
!URxvt.color5:  #6b73b8
!URxvt.color13: #9296b0

!Cyan
!URxvt.color6:  #386ecb
!URxvt.color14: #6a82a8

!White
!URxvt.color7:  #999999
!URxvt.color15: #ffffff


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!         B & W            !!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!BLACK
!*color0:               #3F3F3F
!*color8:               #696969
!RED
!*color1:               #A0A0A0
!*color9:               #E1E1E1
!GREEN
!*color2:               #C4C4C4
!*color10:              #F8F8F8
!YELLOW
!*color3:               #9D9D9D
!*color11:              #CCCCCC
!!*color11:              #EEEEEE
!BLUE
!*color4:               #888888
!*color12:              #AFAFAF
!MAGENTA
!*color5:               #969696
!*color13:              #B8B8B8
!CYAN
!*color6:               #8A8A8A
!*color14:              #C0C0C0
!WHITE
!*color7:               #C1C1C1
!*color15:              #FEFEFE


!!!!!!!!!!!!!!!!!!!!!!!
! XENULL
!!!!!!!!!!!!!!!!!!!!!!!

!black dark/light
*color0: 		#777777
*color8: 		#777777
!RED
*color1:               #d7d7d7
*color9:               #d7d7d7
!GREEN
*color2:               #aadb0f
*color10:              #aadb0f
!YELLOW
*color3:               #666666
*color11:              #666666
!BLUE
!*color4:               #ffffff
*color4:               #7c7c7c
*color12:              #7c7c7c
!*color12:              #ffffff
!MAGENTA
*color5:               #91ba0d
*color13:              #91ba0d
!CYAN
*color6:               #d4d4d4
*color14:              #d4d4d4
!white dark/light
*color7:               #d3d3d3
*color15:              #d3d3d3

!!!!!!!!!!!!!!!!!!!!!!!
!BLOAT IMPROVED 
!!!!!!!!!!!!!!!!!!!!!!!

!URxvt*color0:      #000000
!URxvt*color1:		#F5BBC4
!URxvt*color2:      #A6BBA7
!URxvt*color3:      #345C2D
!URxvt*color4:		#5C7972
!URxvt*color5:      #963c59
!URxvt*color6:      #83ACA7
!URxvt*color7:     #C2C7CB
!URxvt*color8:		#537391
!URxvt*color9:      #FCA5E7
!URxvt*color10:     #B0D1AF
!URxvt*color11:     #fff796
!URxvt*color12:		#CFDFEB
!URxvt*color13:     #cf9ebe
!URxvt*color14:     #B0CFCF
!URxvt*color15:     #ffffff


! font settings --------------------------------------------------------------

Xft.autohint: true
Xft.antialias: true
Xft.hinting: true
Xft.hintstyle: hintslight
!Xft.dpi: 96
Xft.rgba: rgb
Xft.lcdfilter: lcddefault
</pre>