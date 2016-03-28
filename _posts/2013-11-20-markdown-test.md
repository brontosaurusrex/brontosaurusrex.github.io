---
id: 2801
title: markdown test
date: 2013-11-20T01:59:33+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2801
permalink: /2013/11/markdown-test/
categories:
  - Uncategorized
---
EDIT: There is also much more interesting and 2013 [multimarkdown](http://fletcherpenney.net/multimarkdown/) which is targeted at more than just html. (untested)

Markdown example:

<pre># Glavni naslov 

## En link 

[an example](http://example.com/ "<span>Title</span>") inline link. 
[This link](http://example.net/) has no title attribute. 

## Avtomatski link 

<span>&lt;</span><span>http://b.pwnz.org</span><span>&gt;</span> 

## Ena slikca 

![Alt text](images/bronto.png) 

<span>&gt;</span> To je pa tak citat 

## In malo kode 

    ena html koda 
    tleke /\ 
    pa tleke 

## Se ne podnaslov 
Se malo tlele pise. 
</pre>

Minimal html5 seems to be;

    <!DOCTYPE HTML>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Title of the document</title>
    </head>
    <body>
    
    ...
    
    </body>
    </html>