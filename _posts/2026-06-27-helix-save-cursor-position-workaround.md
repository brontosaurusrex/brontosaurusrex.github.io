---
published: true
layout: post
date: '2026-06-27 06:41 +0000'
title: "Helix save cursor position workaround"
tags: cli bash linux 
---
Script that we call from helix and it stores the current line (hxsaveline):  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/hxsaveline>

Entry in your config.toml that binds ctrl+w to save current line via hxsaveline script:

    C-w = ":sh hxsaveline %{buffer_name} %{cursor_line}"

Wrapper that will read the line (based on hash::realpath::filename) and open helix (hxw):  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/hxw>

so you open your file as

    hxw yourfile

and it should open with cursor on stored line.

This is experimental workaround that will not work in all conditions and 'should' really be a core editors feature imho.  
p.s. Better version of this (instead of hxw) would be to just load cursor position from file with another keybind, but not sure how to do that, chatgpt feels it can't be done.
