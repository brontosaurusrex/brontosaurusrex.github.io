---
published: true
layout: post
date: '2019-08-13 06:40'
title: Forward function declarations in a Bash or a Shell script?
tags: bash 
---
[https://stackoverflow.com/questions/13588457/forward-function-declarations-in-a-bash-or-a-shell-script](https://stackoverflow.com/questions/13588457/forward-function-declarations-in-a-bash-or-a-shell-script)

2nd answer looks interesting

    #!/bin/bash

    main() {
        foo
        bar
        baz
    }

    foo() {
    }

    bar() {
    }

    baz() {
    }

    main "$@"

Purpuse is to have interesting main logic at the top of the script and boring fat functions at the bottom.
