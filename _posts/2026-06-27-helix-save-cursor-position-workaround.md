---
published: true
layout: post
date: '2026-06-27 06:41 +0000'
title: "Helix save cursor position (manual workaround)"
tags: cli bash linux 
---
Script that we call from helix and it stores the current line (_hxsaveline_):  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/hxsaveline>

Entry in your config.toml that binds __alt+w__ to save current line via _hxsaveline_ script (under [keys.normal]):

    "A-w" = ":sh hxsaveline %{buffer_name} %{cursor_line}"

Wrapper that will read the stored line and open helix (_hxw_):  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/hxw>

so you open your file as

    hxw yourfile

and it should open with cursor on stored line.

How about just reading and displaying stored line inside helix, this script (_hxloadline_):  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/hxloadline>

and in your config.toml we will use free __alt+l__ (under [keys.normal])

    "A-l" = ":sh hxloadline %{buffer_name}"

will just print stored line number and do nothing else, but one can 18gg.

[![loadline-display](https://thumbs2.imgbox.com/85/cd/UpC3gD1A_t.png)](https://images2.imgbox.com/85/cd/UpC3gD1A_o.png)

This is experimental workaround that will not work in all conditions and 'should' really be a __core__ editor feature imho.
