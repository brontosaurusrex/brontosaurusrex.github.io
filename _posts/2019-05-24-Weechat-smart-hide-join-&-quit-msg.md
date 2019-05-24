---
published: true
layout: post
date: '2019-05-24 16:06'
title: Weechat smart hide joins & quits
tags: cli linux 
---
> With smart filter (keep join/part/quit from users who spoke recently):

    /set irc.look.smart_filter on
    /filter add irc_smart * irc_smart_filter *

[https://weechat.org/files/doc/devel/weechat_faq.en.html](https://weechat.org/files/doc/devel/weechat_faq.en.html#filter_irc_join_part_quit)
