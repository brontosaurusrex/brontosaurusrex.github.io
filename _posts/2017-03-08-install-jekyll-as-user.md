---
published: true
layout: post
date: '2017-03-08 13:32 +0100'
title: Install jekyll as --user
---
    gem install --user jekyll
    
add something like

    # jekyll (gem install --user jekyll)
    PATH="$HOME/.gem/ruby/2.3.0/bin:$PATH"
    
to ~./.bashrc

When it complains about missing stuff

    gem install --user jekyll-sitemap
    
[https://jekyllrb.com/docs/installation/](https://jekyllrb.com/docs/installation/)