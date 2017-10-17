---
published: true
layout: post
date: '2017-10-11 20:31 +0200'
title: Running mpv as biatch
---
## primitive pipe (unidirectional, seems to be the best/simplest one)

Easier to just use ordinary pipes then as in example a. (will not require socat)

	# 1st
	mkfifo ~/tmp/fifo
	mpv --input-file=~/tmp/fifo --idle

	# 2nd
    echo "loadfile http://relay.181.fm:8000" > ~/tmp/fifo
    
 From man, difference between ipc-server (bidirectional) and input-file (oneway street):
 
     --input-file=<filename>

        Read commands from the given file. Mostly useful with a FIFO. Since mpv 0.7.0 also understands JSON commands (see JSON IPC), but you can't get replies or events. Use --input-ipc-server for something bi-directional. On MS Windows, JSON commands are not available.

        This can also specify a direct file descriptor with fd://N (UNIX only). In this case, JSON replies will be written if the FD is writable.

    
[https://github.com/mpv-player/mpv/blob/master/DOCS/man/ipc.rst](https://github.com/mpv-player/mpv/blob/master/DOCS/man/ipc.rst)  
[https://forums.bunsenlabs.org/viewtopic.php?id=4099](https://forums.bunsenlabs.org/viewtopic.php?id=4099)

## testing the official examples (ipc-server)

[https://mpv.io/manual/master/#list-of-input-commands](https://mpv.io/manual/master/#list-of-input-commands)  
[https://mpv.io/manual/master/#json-ipc](https://mpv.io/manual/master/#json-ipc)

Requires socat (in stretch repos)

	# in one term
    mpv --input-ipc-server=/tmp/mpvpipe --idle
    
    # in 2nd term
    echo '{ "command": ["loadfile", "http://relay.181.fm:8000"] }' | socat - /tmp/mpvpipe
	{"data":null,"error":"success"}
    
    # stop but keep player/socket running
    echo '{ "command": ["stop"] }' | socat - /tmp/mpvpipe
	{"data":null,"error":"success"}
    
    # actually quit player/socket
    echo '{ "command": ["quit"] }' | socat - /tmp/mpvpipe
    
    # a more friendly no-json way seems to be working as well
    echo "cycle pause" | socat - /tmp/mpvsocket
	echo "loadfile http://relay.181.fm:8000" | socat - /tmp/mpvpipe
    
edit: After some thinkering: go with this ^ socat method, it should:

- enable bidir communication, no more hunting for pids, single mpv instance allways running (and if not, that is checkable by get_property of something.
- possibility to do continous script for tint using observe some property (not sure how yet)

Get all possible properties
    
	mpv --list-properties
    
Sending any get_property to pipe and getting error exit status probably means that mpv is not connected to that pipe (not running), so start one.