---
published: true
layout: post
date: '2022-08-01 08:28'
title: Dict that uses (local only db) dictd in wsl1?
tags: linux cli 
---
1. Install [dictd as any other package](https://www.xmodulo.com/how-to-look-up-dictionary-via-command-line-on-linux.html).

2. Disable all, but local server

        sudo vim /etc/dictd/dict.conf

3. When dict is needed

        sudo service dictd start

4. test

        dict craft | head                                                    
    
        From The Collaborative International Dictionary of English v.0.48 [gcide]:
    
        Craft \Craft\ (kr[.a]ft), n. [AS. cr[ae]ft strength, skill, art,
            cunning; akin to OS., G., Sw., & Dan. kraft strength, D.
            kracht, Icel. kraptr; perh. originally, a drawing together,
            stretching, from the root of E. cramp.]
            1. Strength; might; secret power. [Obs.] --Chaucer.         
