---
layout: page
title: bash and friends
published: true
---

## no file for you

    [[ -f /var/log/apt/history.log ]] || exit
    
Will exit if file is not there, same thing should be used if you use cd in your scripts

    cd /some/path || exit
    
This will ensure that script doesn't continue if dir doesn't exist.

## benchmark script

    time for i in $(seq 1000); do script; done
    
They say this is bad due to IO (disk) reads.
    
## remove numerals and fill some variables

    stuff="1680x1050+2880+23"
    read -r h w x y <<< $(echo ${stuff//[!0-9]/ })
    
2nd part is called *special parameter expansion replacing non-numeric characters with space*.
