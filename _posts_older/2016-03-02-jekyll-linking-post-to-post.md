---
published: true
layout: post
date: "2016-03-02 12:27 +0100"
title: Jekyll linking to post
---


Example:

    {% raw %}[link title]({% post_url 2016-03-02-pxw-fs7-cine-ei-thing %}){% endraw %}    

Basically you have to figure out the filename which is doable by converting url slashes to -.
