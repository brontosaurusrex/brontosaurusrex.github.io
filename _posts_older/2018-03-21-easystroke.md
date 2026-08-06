---
published: true
layout: post
date: '2018-03-21 17:48 +0100'
title: easystroke
---
[https://github.com/thjaeger/easystroke/wiki/BuildInstructions](https://github.com/thjaeger/easystroke/wiki/BuildInstructions)

    actions.cc: In constructor ‘TreeViewMulti::TreeViewMulti()’:
    actions.cc:57:39: error: ‘group’ is not a member of ‘sigc’
    get_selection()->set_select_function(sigc::group(&negate, sigc::ref(pending)));

