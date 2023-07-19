---
published: true
layout: post
date: '2023-07-19 07:43'
title:  Convert GUI text selections, in place, from UPPER to lower case, etc
tags: bash linux 
---
<https://forums.bunsenlabs.org/viewtopic.php?pid=128488>

How about plain bash 4 (no awk, sed):

    #!/bin/bash

    string="abc def 123"

    # lower
    clip="${string,,}"; echo "lower: $clip"

    # Upper
    clip="${string^^}"; echo "upper: $clip"

    # capital 1st letter
    IFS=" " read -r -a array <<< "$string"; cliparr=( "${array[@]^*}" ); echo "capital: ${cliparr[*]}"

Full script for key binding that should work with x apps:
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/upperLower>

