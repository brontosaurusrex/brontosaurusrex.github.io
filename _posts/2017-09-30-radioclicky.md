---
published: true
layout: post
date: '2017-09-30 12:26 +0200'
title: radioClicky for tint2 and cli
---
script  
[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/radioClicky](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/radioClicky)

debate, install instructions  
[https://forums.bunsenlabs.org/viewtopic.php?id=4226](https://forums.bunsenlabs.org/viewtopic.php?id=4226)

[![radioClicky.md.png](https://cdn.scrot.moe/images/2017/09/30/radioClicky.md.png)](https://cdn.scrot.moe/images/2017/09/30/radioClicky.png)
[![optionalOpenboxAndConly.md.png](https://cdn.scrot.moe/images/2017/10/04/optionalOpenboxAndConly.md.png)](https://cdn.scrot.moe/images/2017/10/04/optionalOpenboxAndConly.png)

    radioClicky help          # show available switches
    
## dev notes

q: What array type do I need for: "0, url0, description0" type of data structure?  
a: two arrays

q: how to echo stations around current id
a:

    # array=( {a..z} ) id=7 n=3; 
    echo "${array[@]:id-n:1+n*2}"

## Running mpv as biatch or repurpose single instance

### a. primitive pipe (more than one needed obviously)

    mkfifo somepipe
    mpv --playlist=somepipe --idle &
    echo "http://pub1.diforfree.org:8000/di_dubstep_hi" > somepipe
    killall mpv
    rm somepipe 
    
[https://github.com/mpv-player/mpv/blob/master/DOCS/man/ipc.rst](https://github.com/mpv-player/mpv/blob/master/DOCS/man/ipc.rst)  
[https://forums.bunsenlabs.org/viewtopic.php?id=4099](https://forums.bunsenlabs.org/viewtopic.php?id=4099)

### b. umpv python script

[https://raw.githubusercontent.com/mpv-player/mpv/master/TOOLS/umpv](https://raw.githubusercontent.com/mpv-player/mpv/master/TOOLS/umpv)  
[https://github.com/mpv-player/mpv/issues/2610](https://github.com/mpv-player/mpv/issues/2610)

### c. json ipc bash

[https://gist.github.com/dwgill/a66769e0edef69c04d3b](https://gist.github.com/dwgill/a66769e0edef69c04d3b)

Not working with current version, but perhaps could be fixed, seems to not like lavfi options at all.

### d. testing the official examples

[https://mpv.io/manual/master/#list-of-input-commands](https://mpv.io/manual/master/#list-of-input-commands)  
[https://mpv.io/manual/master/#json-ipc](https://mpv.io/manual/master/#json-ipc)

Requires socat (in stretch repos)

	# in one term
    mpv --input-ipc-server=/tmp/mpvsocket --idle
    
    # in 2nd term
    echo '{ "command": ["loadfile", "http://relay.181.fm:8000"] }' | socat - /tmp/mpvsocket
	{"data":null,"error":"success"}
    
    # stop but keep player/socket running
    echo '{ "command": ["stop"] }' | socat - /tmp/mpvsocket
	{"data":null,"error":"success"}
    
    # actually quit player/socket
    echo '{ "command": ["quit"] }' | socat - /tmp/mpvsocket
    
    # a more friendly no-json way seems to be working as well
    echo "cycle pause" | socat - /tmp/mpvsocket
	echo "loadfile http://relay.181.fm:8000" | socat - /tmp/mpvsocket
    
Easier to just use ordinary pipes then as in example a. (will not require socat)

	# 1st
	mkfifo ~/tmp/fifo
	mpv --input-file=~/tmp/fifo --idle

	# 2nd
    echo "loadfile http://relay.181.fm:8000" > ~/tmp/fifo
    
 From man, difference between one and another:
 
     --input-file=<filename>

        Read commands from the given file. Mostly useful with a FIFO. Since mpv 0.7.0 also understands JSON commands (see JSON IPC), but you can't get replies or events. Use --input-ipc-server for something bi-directional. On MS Windows, JSON commands are not available.

        This can also specify a direct file descriptor with fd://N (UNIX only). In this case, JSON replies will be written if the FD is writable.
	
