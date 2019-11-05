---
published: true
layout: post
date: '2019-10-29 22:13'
title: Required in a loop
tags: bash 
---
There must be shorter way than this

    #!/bin/bash

    required() {
        local terminate="0" missing="" var=""
        for var in "$@" ; do
            command -v "$var" >/dev/null 2>&1 || { missing="$var $missing" ; terminate="1"; }
        done
        if (( terminate )); then
            missing="${missing%"${missing##*[![:space:]]}"}"
            echo "I need $missing."
            exit 1 
        fi
    }

    required ack 'to shave' nitrogen # will exit here if missing
