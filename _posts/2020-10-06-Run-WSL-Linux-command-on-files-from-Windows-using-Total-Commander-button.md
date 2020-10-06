---
published: true
layout: post
date: '2020-10-06 21:34'
title: Run WSL Linux command on Windows files using Total Commander button
tags: mine linux 
---
### Pretest

On Windows `Start / run`, type

    cmd /c wsl uname -a; sleep 5

### ^If that works

Assuming your wsl engine, where your magic script is, is set as default and there is user 'b', make total commander button

    Command: cmd /c wsl --user b PATH="/home/b/bin:$PATH";toX264crfArr
    Parameters: %S

Where `cmd /c` means run stuff, but close terminal at the end (to keep cmd open use `/k`). 

`%S` is tcm stuff  
> %S insert the names of all selected files into the command line. Names containing spaces will be surrounded by double quotes. 
