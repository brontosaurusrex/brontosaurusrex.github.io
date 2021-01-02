---
published: true
layout: post
date: '2020-12-29 11:20'
title: TotalWire lite 2021
tags: misc mine luv 
---
[![scrot.png-SKsGvzLn3Fzszro-md](https://images.weserv.nl/?url=https://i.imgur.com/HCJqQPZ.png)](https://images.weserv.nl/?url=https://i.imgur.com/DpIJWH8.png)  
<small>An attempt to simplify config of an old file manager friend from another os.</small>

## How to quote stuff 

when using [cmd or powershell or wt as a startup wrapper for some command](https://www.ghisler.ch/board/viewtopic.php?p=395513#p395513).

### cmd /k

No

    command: cmd /k
    parameters: robocopy "%P" "%T" /E /xd Adobe*Premiere*pro

Yes

    command: cmd /k
    parameters: robocopy "%P\." "%T\." /E /xd Adobe*Premiere*pro

also just \ should be enough, without a dot.

### powershell -NoExit -Command

Yes

    command: powershell -NoExit -Command
    parameters: robocopy '%P\.' '%T\.' /E /xd Adobe*Premiere*pro
