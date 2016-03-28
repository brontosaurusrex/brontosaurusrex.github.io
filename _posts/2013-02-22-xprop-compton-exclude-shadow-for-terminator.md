---
id: 2444
title: xprop, compton, exclude shadow for terminator
date: 2013-02-22T20:31:40+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=2444
permalink: /2013/02/xprop-compton-exclude-shadow-for-terminator/
categories:
  - Uncategorized
---
shadow-exclude = &#8220;i:a:terminator&#8221;;

<pre># Shadow
shadow = true;
no-dnd-shadow = true;
no-dock-shadow = true;
clear-shadow = true;
#shadow-radius = 7;
#shadow-offset-x = -7;
#shadow-offset-y = -7;
# shadow-opacity = 0.7;
# shadow-red = 0.0;
# shadow-green = 0.0;
# shadow-blue = 0.0;
shadow-exclude = "i:a:terminator";
#shadow-exclude = "n:e:Notification";
#shadow-ignore-shaped = true;

# Opacity
#menu-opacity = 0.9;
#inactive-opacity = 0.8;
#frame-opacity = 0.7;
inactive-opacity-override = false;
alpha-step = 0.06;

# Fading
fading = false;
# fade-delta = 30;
fade-in-step = 0.03;
fade-out-step = 0.03;
# no-fading-openclose = true;

# Other
mark-wmwin-focused = true;
mark-ovredir-focused = true;
detect-rounded-corners = true;
detect-client-opacity = true;
#refresh-rate = 0;
#vsync = "none";
dbe = false;
paint-on-overlay = false;
sw-opti = false;

# Window type settings
wintypes:
{
  tooltip = { fade = true; shadow = false; opacity = 0.85; };
};
</pre>

some info here:
  
<https://github.com/chjj/compton/pull/29>