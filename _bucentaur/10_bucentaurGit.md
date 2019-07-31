---
title: Bucentaur git
layout: bucentaur
---

## Get bucentaur git and apply configs

    cd && mkdir source && cd source
    git clone https://github.com/brontosaurusrex/bucentaur
    git config credential.helper store # optional
    cd bucentaur
    
    # Run scripts
    ./overwriteConfigs  # copy user stuff, themes, fonts, icons ...
    ./fixPaths          # in .wbar and .Xresources
    ./makeUserDirs      # mkdir documents downloads images ...
