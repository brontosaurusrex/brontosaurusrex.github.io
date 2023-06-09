---
published: true
layout: post
date: '2023-06-09 13:34'
title: CSS multiselect images
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

Thanks to #css/libera, user hmw[at].