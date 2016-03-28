---
id: 2819
title: javascript text search
date: 2013-11-20T17:21:50+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2819
permalink: /2013/11/javascript-text-search/
categories:
  - Uncategorized
---
<http://lunrjs.com/>

_lunr.js is a simple full text search engine for your client side applications. It is designed to be small, yet full featured, enabling you to provide a great search experience without the need for external, server side, search services.</p> 

lunr.js has no external dependencies, although it does require a modern browser with ES5 support.</em>

<http://jssindex.sourceforge.net/>

_JSS is a simple search engine designed for CDROM or Web-based document collections. The documents to be indexed can be in HTML, PostScript (.ps and .ps.gz), PDF, and DjVu. The main feature of JSS is that the query engine and the index are entirely in JavaScript, and therefore require no other software than a JavaScript-enabled Web browser.</p> 

What is the advantage? If you are distributing a collection of document on CD-ROM, you can provide platform-independent full-text search without asking your users to install any software on their machine. If you publish a collection of documents on the web, you don&#8217;t need to install any server-side scripts: search queries run entirely in the user&#8217;s web browser.</em>

[http://reyesr.github.io/fullproof](http://reyesr.github.io/fullproof/) < looks good _Fullproof is a javascript library that provides high-quality full-text search in the browser.</p> 

This specially makes sense if your webapp is designed to work offline, using the HTML5 offline feature or because your application runs on a possibly disconnected mobile device.

Features

Boolean and Scoring search engines available, depending on the kind of search your application needs
  
Automatic HTML5 storage detection, and graceful degradation, with a configurable constraint-based capabilities system. Currently manages WebSQL, IndexedDB and Memory data storage.
  
Full unicode support and normalization, diacritical marks removal, stemming and phonetical algorithms (currently available for english and french)
  
Configurable and very easely extensible parsing and token normalization system
  
Easy to integrate, zero external dependency, ~100k minified
  
Note that fullproof is NOT a document management system, it does only one thing: provide fulltext search to your application, it does not aim at storing documents or data.</em>