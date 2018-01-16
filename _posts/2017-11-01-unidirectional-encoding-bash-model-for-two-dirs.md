---
published: true
layout: post
date: '2017-11-01 10:17 +0100'
title: unidirectional encoding bash model for two dirs
tags: bash cli linux
---
plain serial  
[~bin/unidirectionalDirEncoderModel](https://github.com/brontosaurusrex/stretchbang/blob/master/.experiments/bin/unidirectionalDirEncoderModel)

and with some bash 4.3 parallelization (set n to wanted number of processes)  
[~bin/unidirectionalDirParallelEncoderModel](https://github.com/brontosaurusrex/stretchbang/blob/master/.experiments/bin/unidirectionalDirParallelEncoderModel)

basic parallel example, go to freenode #bash and type !parallel  

    #!/bin/bash

    action () {

    echo "$RANDOM"
    sleep 1

    }

    #Run n processes in parallel (bash 4.3)
    i=0 n=4; 

    # main
    for run in {1..20}; do

        if (( i++ >= n )); then wait -n; fi

        action & 
        
    done 

    wait

A tool that can copy paste tags from one to another?

[https://github.com/jangler/taffy](https://github.com/jangler/taffy)  
[https://hydrogenaud.io/index.php/topic,50822.msg455253.html#msg455253](https://hydrogenaud.io/index.php/topic,50822.msg455253.html#msg455253)
