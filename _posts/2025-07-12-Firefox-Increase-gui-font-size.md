---
published: true
layout: post
date: '2025-07-12 09:10'
title: Firefox Increase gui font size
tags: web 
---
## About Mozilla Firefox

shows version: 140.0.4 (64-bit)

## Where is my profile fodler

Got to about:support and find 'Profile folder'

Open it and add fodler named 'chrome', add userChrome.css in it. For example this one:  
<https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/.mozilla/firefox/userChrome.css>

Enable stuff in about.config, making 'toolkit.legacyUserProfileCustomizations.stylesheets' true.

## Increase the gui font?

Add

    /* Increase gui font */
    * {
      font-size: 10pt !important;
    }

to the userChrome.css.

Restart firefox, profit. Tabs should be curved a little and font should be bigger. This should NOT affect the web zoom / size of the web pages.

## Btw

You can also change the font

    /* Increase gui font */
    * {
    font-family: "3270 Nerd Font", sans-serif !important;
    font-size: 13pt !important;
    }

## Full userChrome.css example

    /* put me in ~/.mozilla/firefox/_yourprofile_/chrome/userChrome.css */
    /* https://brontosaurusrex.github.io/2018/09/08/firefox-quantum/ */
    
    @namespace url(http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul);
    
    /* Give me some curves */
    .tab-background {
    border-radius: 10px 10px 2px 2px !important;
    border-image: none !important;
    }
    .tab-line {
    display: none;
    }
    
    /* remove colored line above each tab */
    #TabsToolbar .tabbrowser-tab .tab-line {
        visibility: hidden;
    }
    
    /* Don't show close button until hovered https://www.reddit.com/r/firefox/comments/731vz1/userchromecss_hack_for_showing_close_button_on/ */
    .tabbrowser-tab:not(:hover) .tab-close-button{ display:none; }
    .tabbrowser-tab:not([pinned]):hover .tab-close-button{ display:block !important; }
    
    /* Remove separator between tabs */
    .tabbrowser-tab::before, 
    .tabbrowser-tab::after{
    display: none !important;
    }
    
    /* Increase gui font */
    * {
    font-size: 10pt !important;
    }