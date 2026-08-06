---
published: true
layout: post
date: '2018-03-18 11:59 +0100'
title: Gmail move toolbar to the right
tags:
  - mine
  - web
---
1. Install [Stylish - Custom themes for any website](https://addons.mozilla.org/en-US/firefox/addon/stylish/) addon

2. Make a new style for *URLs staring with* https://mail.google.com

```css
/* toolbar */

.nn {
    float: right;
    margin: 0;
    padding: 0;
}
.nM {
    margin: 0;
    padding: 0;
}

/* main area with emails listed */

.AO {
    margin-left: 10px;
    padding-right: 0;
}
.aeH {
    margin-left: 10px;
}
```
