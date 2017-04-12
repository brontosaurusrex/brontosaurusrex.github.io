---
published: true
layout: post
date: '2017-04-12 21:46 +0200'
title: jekyll collections and navigation
---
[https://jekyllrb.com/docs/collections/](https://jekyllrb.com/docs/collections/)  
[https://jekyllrb.com/tutorials/navigation/](https://jekyllrb.com/tutorials/navigation/)  
![jekyll logo](https://jekyllrb.com/img/logo-2x.png)

## example

in \_config.yml (my new collection is named col)

    collections:
      col:
        output: true
        permalink: /:collection/:path/

will build \_site like

    _site/col/
    ├── 2017-04-12-dskgkdsgj
    │   └── index.html
    └── test
        └── index.html
        
loop through all the collection named col members example

    \{\% for stuff in site.col \%\}
      <h2>\{\{ stuff.title \}\}</h2>
    \{\% endfor \%\}



