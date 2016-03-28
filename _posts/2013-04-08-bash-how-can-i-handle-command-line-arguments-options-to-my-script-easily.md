---
id: 2547
title: 'bash: How can I handle command-line arguments (options) to my script easily?'
date: 2013-04-08T07:54:36+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2547
permalink: /2013/04/bash-how-can-i-handle-command-line-arguments-options-to-my-script-easily/
categories:
  - Uncategorized
---
<http://mywiki.wooledge.org/BashFAQ/035>

getopts version looks sweet.

example, this will take argument from f and c;

<pre>#!/bin/bash

# Initialize our own variables:
output_file=""
verbose=0

OPTIND=1 # Reset is necessary if getopts was used previously in the script.  It is a good idea to make this local in a function.
while getopts "h?vf:c:" opt; do
    case "$opt" in
        h|\?)
            show_help
            exit 0
            ;;
        v)  verbose=1
            ;;
        c)  crf=$OPTARG
            ;;
        f)  output_file=$OPTARG
            ;;

    esac
done
shift $((OPTIND-1)) # Shift off the options and optional --.

echo "verbose=${verbose}, output_file=${output_file} crf=${crf}, Leftovers: $@"

# End of file
</pre>

notes:

<pre>f=file.mp4; echo *"${f%.*}"*.wav</pre>