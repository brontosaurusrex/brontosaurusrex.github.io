---
id: 401
title: ubuntu, screen and rtorrent
date: 2009-12-23T15:56:44+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=401
permalink: /2009/12/ubuntu-screen-and-rtorrent/
categories:
  - Uncategorized
---
`screen rtorrent`

…and whats so exiting?

press `Ctrl-a d` and it will detach, and log out (leave de machine on!) and come back later,

`screen -r`

and will resume your session.

rtorrent manual
  
<http://libtorrent.rakshasa.no/rtorrent/rtorrent.1.html>

some shortkeys

<table class="toccolours" border="1" cellpadding="4" cellspacing="0" style="margin:5px;">
  <tr>
    <th width="75">
      Cmd
    </th>
    
    <th>
      Action
    </th>
  </tr>
  
  <tr>
    <td>
      Ctrl-q
    </td>
    
    <td>
      Quit application
    </td>
  </tr>
  
  <tr>
    <td>
      Ctrl-s
    </td>
    
    <td>
      Start download. Runs hash first unless already done.
    </td>
  </tr>
  
  <tr>
    <td>
      Ctrl-d
    </td>
    
    <td>
      Stop an active download or remove a stopped download
    </td>
  </tr>
  
  <tr>
    <td>
      Ctrl-k
    </td>
    
    <td>
      Stop and close the files of an active download.
    </td>
  </tr>
  
  <tr>
    <td>
      Ctrl-r
    </td>
    
    <td>
      Initiate hash check of torrent. Without starting to download/upload.
    </td>
  </tr>
  
  <tr>
    <td>
      Left
    </td>
    
    <td>
      Returns to the previous screen
    </td>
  </tr>
  
  <tr>
    <td>
      Right
    </td>
    
    <td>
      Goes to the next screen
    </td>
  </tr>
  
  <tr>
    <td>
      Backspace/Return
    </td>
    
    <td>
      Adds the specified *.torrent
    </td>
  </tr>
  
  <tr>
    <td>
      a|s|d
    </td>
    
    <td>
      Increase global upload throttle about 1|5|50 KB/s
    </td>
  </tr>
  
  <tr>
    <td>
      A|S|D
    </td>
    
    <td>
      Increase global download throttle about 1|5|50 KB/s
    </td>
  </tr>
  
  <tr>
    <td>
      z|x|c
    </td>
    
    <td>
      Decrease global upload throttle about 1|5|50 KB/s
    </td>
  </tr>
  
  <tr>
    <td>
      Z|X|C
    </td>
    
    <td>
      Decrease global download throttle about 1|5|50 KB/s
    </td>
  </tr>
</table>