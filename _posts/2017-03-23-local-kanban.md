---
published: true
layout: post
date: '2017-04-05 11:22 +0100'
title: local kanban
tags: cli mine
---
![kanban image](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Simple-kanban-board-.jpg/600px-Simple-kanban-board-.jpg)

## Command line kanban using tree

install tree

    sudo apt install tree
    
make root dir and some sub-dirs that will hold the structure

    mkdir kanban && cd kanban
    mkdir 1_project 2_readyForMix 3_push 4_deleteme

alias to hide some stats (or just use tree)

    alias kan='tree --noreport'
    alias ban='tree --noreport -I 4_deleteme'
    
and possible winner, dirs sorted manually, files by date (newer on top)

    alias kan='cd ~/source/kanban-cli && tree -cr --noreport 1_project 2_readyForMix 3_push 4_deleteme'
    
or turn that [into script](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/bin/kan) and load into conky

    ${font liberationmono:size=11}
    ${execi 10 kan}
    
Making some projects

    touch "1_projekt/to shell and back again, 12.4"
    touch "1_project/something else 21.4"

Display kanban

    kan # kan -D, kan -c, kan -cr
    .
    ├── 2_readyForMix
    ├── 3_push
    ├── 4_deleteme
    └── 1_project
        ├── to shell and back again, 12.4
        └── something else 21.4

Move items to next stage

    mv 1_project/something\ else\ 21.4 2_readyForMix/ ; kan
    .
    ├── 1_project
    │   └── to shell and back again, 12.4
    ├── 2_readyForMix
    │   └── something else 21.4
    ├── 3_push
    └── 4_deleteme

and one to mix, one to push

    mv 1_project/to\ shell\ and\ back\ again\,\ 12.4  2_readyForMix/ && mv 2_readyForMix/something\ else\ 21.4 3_push/
    kan
    .
    ├── 1_project
    ├── 2_readyForMix
    │   └── to shell and back again, 12.4
    ├── 3_push
    │   └── something else 21.4
    └── 4_deleteme
    
 or ignore 4_deleteme (or use ^ban alias)
 
    kan -I 4_*
    .
    ├── 1_project
    ├── 2_readyForMix
    │   └── newOne
    └── 3_push
    
 If directories are empty, git will not commit them, workaround might be to add .null to each dir.
 
    touch 1_project/.null 2_readyForMix/.null 3_push/.null 4_deleteme/.null
    
 Of course you can go on, adding some content to this null-files like
 
     echo "search google for more info" >> 1_project/someFile
     
 and using tree -ch to present the filesize in the output...
    
### tree options

      -a            All files are listed.
      -d            List directories only.
      -l            Follow symbolic links like directories.
      -f            Print the full path prefix for each file.
      -i            Don't print indentation lines.
      -q            Print non-printable characters as '?'.
      -N            Print non-printable characters as is.
      -p            Print the protections for each file.
      -u            Displays file owner or UID number.
      -g            Displays file group owner or GID number.
      -s            Print the size in bytes of each file.
      -h            Print the size in a more human readable way.
      -D            Print the date of last modification.
      -F            Appends '/', '=', '*', or '|' as per ls -F.
      -v            Sort files alphanumerically by version.
      -r            Sort files in reverse alphanumeric order.
      -t            Sort files by last modification time.
      -x            Stay on current filesystem only.
      -L level      Descend only level directories deep.
      -A            Print ANSI lines graphic indentation lines.
      -S            Print with ASCII graphics indentation lines.
      -n            Turn colorization off always (-C overrides).
      -C            Turn colorization on always.
      -P pattern    List only those files that match the pattern given.
      -I pattern    Do not list files that match the given pattern.
      -H baseHREF   Prints out HTML format with baseHREF as top directory.
      -T string     Replace the default HTML title and H1 header with string.
      -R            Rerun tree when max dir level reached.
      -o file       Output to file instead of stdout.
      --inodes      Print inode number of each file.
      --device      Print device ID number to which each file belongs.
      --noreport    Turn off file/directory count at end of tree listing.
      --nolinks     Turn off hyperlinks in HTML output.
      --dirsfirst   List directories before files.
      --charset X   Use charset X for HTML and indentation line output.
      --filelimit # Do not descend dirs with more than # files in them.

## other solutions / misc

html5/js  
[http://interactjs.io/](http://interactjs.io/), [http://interactjs.io/docs](http://interactjs.io/docs)    
[https://www.w3schools.com/html/html5_webstorage.asp](https://www.w3schools.com/html/html5_webstorage.asp)

things that are done  
[https://greggigon.github.io/my-personal-kanban/](https://greggigon.github.io/my-personal-kanban/)  
[https://github.com/coderofsalvation/kanban.bash](https://github.com/coderofsalvation/kanban.bash)  
[https://github.com/alphashack/gitban](https://github.com/alphashack/gitban)  
[http://kanban.leanlabs.io/](http://kanban.leanlabs.io/)  

Xpad  
[![localTrelloWithXpad.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpad.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpad.png)
[![localTrelloWithXpadNoShadow.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpadNoShadow.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpadNoShadow.png)
[![localTrelloWithXpadNoShadow2.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpadNoShadow2.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/23/localTrelloWithXpadNoShadow2.png)

Theory  
[https://en.wikipedia.org/wiki/Kanban_board](https://en.wikipedia.org/wiki/Kanban_board)
