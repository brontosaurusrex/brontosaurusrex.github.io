---
published: true
layout: post
date: '2020-10-22 11:20'
title: Controlling Premiere from far using bluetooth mice
tags: video
---
[![control-fs8.png-uGL13v221BXWTMK-md](https://images.weserv.nl/?url=https://i.imgur.com/3szP9Xnl.png)](https://images.weserv.nl/?url=https://i.imgur.com/3szP9Xn.png)  
Since premiere has sort of limited number of buttons under the video panes (and they are small for this purpose), good way to control things from far is to open built-in onscreen keyboard so that the

    J K L
      M      < >

buttons are visible (CTRL+S would be good as well). This will not work for actual editing work, but good enough for watching material.

[Custom gui, my own lil onscreen keyboard?](https://www.autohotkey.com/docs/commands/Gui.htm)

## My very 1st autohotkey script: Remote.ahk

```
; autohotkey script named Remote

; https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Premiere_Functions.ahk
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

Gui, +AlwaysOnTop 
Gui, Font, s50
Gui, Add, Button, x142 y29 w100 h100 , K
Gui, Add, Button, x262 y29 w100 h100 , L
Gui, Add, Button, x22 y149 w100 h100 , <
Gui, Add, Button, x142 y149 w100 h100 , M
Gui, Add, Button, x262 y149 w100 h100 , >
Gui, Add, Button, x22 y269 w340 h90 , Save
Gui, Add, Button, x22 y29 w100 h100 , J
; Generated using SmartGUI Creator 4.0

Gui, Show, x357 y126 h388 w387, Remote

Return

GuiClose:
ExitApp

ButtonJ:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send j
Return

ButtonK:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send k
Return

ButtonL:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send l
Return

ButtonM:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send m
Return

Button>:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send {Right}
Return

Button<:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send {Left}
Return

ButtonSave:
	WinActivate ahk_class Premiere Pro
	#IfWinActive, ahk_class Premiere Pro
	Send, ^s  
Return
```
Gives  
![Remote](https://images.weserv.nl/?url=https://i.imgur.com/FhGS1in.png)

## v2 adds buttons for 10 frames jump left and right

    ; autohotkey script named Remote

    ; https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Premiere_Functions.ahk
    Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
    #SingleInstance force ;only one instance of this script may run at a time!
    #MaxHotkeysPerInterval 2000
    #WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

    Gui, +AlwaysOnTop 
    Gui, Font, s50
    Gui, Add, Button, x142 y29 w100 h100 , K
    Gui, Add, Button, x262 y29 w100 h100 , L
    Gui, Add, Button, x22 y149 w100 h100 , <
    Gui, Add, Button, x142 y149 w100 h100 , M
    Gui, Add, Button, x262 y149 w100 h100 , >
    ;Gui, Add, Button, x22 y269 w340 h90 , Save
    Gui, Add, Button, x22 y29 w100 h100 , J

    Gui, Font, s30
    Gui, Add, Button, x142 y269 w100 h100 , Save
    Gui, Add, Button, x22 y269 w100 h100 , <10
    Gui, Add, Button, x262 y269 w100 h100 , 10>


    ; Generated using SmartGUI Creator 4.0

    Gui, Show, x357 y126 h388 w387, Remote

    Return

    GuiClose:
    ExitApp

    ButtonJ:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send j
    Return

    ButtonK:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send k
    Return

    ButtonL:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send l
    Return

    ButtonM:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send m
    Return

    Button>:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send {Right}
    Return

    Button<:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send {Left}
    Return


    Button10>:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send {Right 10}
    Return

    Button<10:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send {Left 10}
    Return

    ButtonSave:
        WinActivate ahk_class Premiere Pro
        #IfWinActive, ahk_class Premiere Pro
        Send, ^s  
    Return


Note: To avoid premiere blinking when clicking buttons untick 'Disable video output when in background' in premiere preferences.
