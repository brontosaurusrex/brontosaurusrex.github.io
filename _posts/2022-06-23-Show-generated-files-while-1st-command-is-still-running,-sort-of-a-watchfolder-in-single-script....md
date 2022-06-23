---
published: true
layout: post
date: '2022-06-23 21:04'
title: Show generated files while 1st command is still running, sort of a watchfolder in single script...
tags: bash mine 
---
This is just a model.

```bash
#!/bin/bash

# watchfolder (model)

# a simple watchfolder model where 2nd thing does things generated from 1st thing 
# while 1st thing is still running and exits nicely

# tmp dir with extended trap that should bring down main as well 
# note: kill %%  # will kill most recent background job
tmp="$HOME/tmp/test/model"
trap '[ -n "$tmp" ] && rm -fr "$tmp" && kill %%' EXIT
mkdir -m 700 "$tmp" "$tmp/make" "$tmp/show" || { echo '!! unable to create a tmpdir' >&2; tmp=; exit 1; }

# main calculus that creates files while still running here (ffmpeg for example)

for i in {001..020}
do
    touch "$tmp/make/${i}.png" && echo "$i" > "$tmp/make/${i}.png" && sleep 0.2
    # simulate slow rendering of the main 
done &
pid="$!"

# the thing that does something with those files, while the main is still running
# checking if the pid is still active OR some files left to process

while [[ "$(ps -p $pid &>/dev/null)" ]] || [[ "$(ls "$tmp/make"*)" ]]; do

    mv "$tmp/make/"* "$tmp/show" 2> /dev/null

    # show and remove each
    cd "$tmp/show" || exit
    for file in *; do
        echo -n "$file > " && cat "$file"
        rm "$file"

    done
    sleep 1 # pause between checks
done

```
Observe file creation and moving with
```bash
watch -n 1 tree $HOME/tmp/test/
```
This may be usefull with ffmpeg scene detection, showing frames in term, while ffmpeg is still generating new ones.
