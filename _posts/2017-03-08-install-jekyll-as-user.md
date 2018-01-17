---
published: true
layout: post
date: '2017-03-08 13:32 +0100'
title: Install jekyll as --user
tags: web cli
---
    gem install --user jekyll
    
add something like

    # jekyll (gem install --user jekyll)
    PATH="$HOME/.gem/ruby/2.3.0/bin:$PATH"
    
to ~/.bashrc. To test

    which jekyll # should return something like:
    /home/user/.gem/ruby/2.3.0/bin/jekyl

When it complains about missing stuff

    gem install --user jekyll-sitemap
    
[https://jekyllrb.com/docs/installation/](https://jekyllrb.com/docs/installation/)

![jekyll](https://jekyllrb.com/img/logo-2x.png)

p.s. To get ruby stuff, use something like

    sudo apt install jekyll
    sudo apt remove jekyll
