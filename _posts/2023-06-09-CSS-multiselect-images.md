---
published: true
layout: post
date: '2023-06-09 13:34'
title: CSS multi-select images
tags: web 
---
<https://jsfiddle.net/qpbsfz6o/>

html: 

    <ul class="selectables">
      <label>
        <input type="checkbox">
        <img src="//dummyimage.com/100x100">
      </label>
      <label>
        <input type="checkbox">
        <img src="//dummyimage.com/100x100">
      </label>
      <label>
        <input type="checkbox">
        <img src="//dummyimage.com/100x100">
      </label>
    </ul>

css:

    ul.selectables li {
      display:inline-block;
    }

    ul.selectables input {
      display:none;
    }

    ul.selectables input:checked + img {
      outline:solid 2px red;
    }

JS version:  
<https://jsfiddle.net/9jdgyqvc/>

^ Should make html part less verbose, recommended. The ul/li stuff may not be needed (img tag should be enough).

JS version 2 (lazy):
<https://jsfiddle.net/9jdgyqvc/2/>

Thanks to #css/libera irc.
