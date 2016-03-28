---
id: 3063
title: Mountain lion os x, add refresh button to finder
date: 2014-04-09T12:14:21+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3063
permalink: /2014/04/mountain-lion-os-x-add-refresh-button-to-finder/
categories:
  - Uncategorized
---
in automator make a new app, add &#8220;run applescript&#8221; thingy with;

<pre>on run {input, parameters}
	
	tell application "Finder" to tell front window to update every item
	
	return input
end run
</pre>

save as app, drag and drop to finder buttons.

[<img src="http://b.pwnz.org/wp-content/uploads/2014/04/automator-300x264.png" alt="automator" width="300" height="264" class="alignleft size-medium wp-image-3064" />](http://b.pwnz.org/wp-content/uploads/2014/04/automator.png)

[<img src="http://b.pwnz.org/wp-content/uploads/2014/04/here-300x216.png" alt="here" width="300" height="216" class="alignleft size-medium wp-image-3065" />](http://b.pwnz.org/wp-content/uploads/2014/04/here.png)