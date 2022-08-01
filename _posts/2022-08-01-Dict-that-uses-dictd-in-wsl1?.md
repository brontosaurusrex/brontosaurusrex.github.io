---
published: true
layout: post
date: '2022-08-01 08:28'
title: Dict that uses (local only db) dictd in wsl1?
tags: linux cli 
---
1. Install [dictd as any other package](https://www.xmodulo.com/how-to-look-up-dictionary-via-command-line-on-linux.html).

        sudo apt install dictd dict-gcide dict-wn dict-moby-thesaurus

2. Disable all, but local server

        sudo vim /etc/dictd/dict.conf

3. When dict is needed (will run on even if all wsl terminals are closed)

        sudo service dictd start

        # test: service --status-all 

4. test

       dict gnu                                                                                                         ~
       1 definition found
       
       From The Collaborative International Dictionary of English v.0.48 [gcide]:
       
       Gnu \Gnu\, n. [Hottentot gnu, or nju: cf. F. gnou.] (Zool.)
           One of two species of large South African antelopes of the
           genus {Catoblephas}, having a mane and bushy tail, and curved
           horns in both sexes. [Written also {gnoo}.]
           [1913 Webster]
           
           Note: The common gnu or wildebeest ({Catoblephas gnu}) is
                 plain brown; the brindled gnu or blue wildebeest ({C.
                 gorgon}) is larger, with transverse stripes of black on
                 the neck and shoulders.
                 [1913 Webster] 

5. More

       dict -D           # list databases
       dict -d wn gnu    # specifiy database
        
       # more dictionaries
       sudo apt install dict-jargon dict-foldoc 
