---
published: true
layout: post
date: '2023-07-20 12:43'
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
    string="${string,,}"; IFS=" " read -r -a array <<< "$string"; cliparr=( "${array[@]^*}" ); echo "capital: ${cliparr[*]}"
    # ^ doesn't support multiline, see ˇ the new script that uses awk instead


Full script for key bindings:
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/upperLower2>

