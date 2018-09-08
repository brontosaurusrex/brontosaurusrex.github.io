---
published: true
layout: post
date: '2018-09-08 18:46 +0200'
title: Firefox Quantum
---
Quick theme that may match Adapta-Nokto, get this

[https://addons.mozilla.org/en-US/firefox/addon/native-dark/](https://addons.mozilla.org/en-US/firefox/addon/native-dark/)

Set 'Static color' to 29353B and toolbar difference to 5.

[![scrot05373.md.png](https://cdn.scrot.moe/images/2018/09/08/scrot05373.md.png)](https://scrot.moe/image/9dE7C)

To get some curves on tabs from old version in your profile folder add chrome/userChrome.css with

    .tab-background {
      border-radius: 16px 16px 0px 0px !important;
      border-image: none !important;
    }
    .tab-line {
      display: none;
    }
    /* remove colored line above each tab */
       #TabsToolbar .tabbrowser-tab .tab-line {
           visibility: hidden;
    }

Or switch to chrome, smoothscroll extension  
[https://chrome.google.com/webstore/detail/smoothscroll/nbokbjkabcmbfdlbddjidfmibcpneigj/related](https://chrome.google.com/webstore/detail/smoothscroll/nbokbjkabcmbfdlbddjidfmibcpneigj/related)
