---
layout: page
title: about
published: true
---

## This blog operates under this principles

> Freedom of speech is the right to communicate one's opinions and ideas without fear of government retaliation or censorship. The term freedom of expression is sometimes used synonymously, but includes any act of seeking, receiving and imparting information or ideas, regardless of the dinosaur used.

## Privacy

"We" do NOT track, log, spy or are in any way aware of the user presence on this site.  
 Edit: Due to unfortunate lost of scrot.moe, images are now hosted using [imgur.com](https://imgur.com/privacy).

## Thinkering and development

### I went through this (running away from wordpress):

- Do a blog from scratch (build bash engine, which was slow but kinda working) and actually had a nice search-engine like index.
- Realized that without some sort of web interface, writing blogs would be really boring, slow, ....
- Long pause, almost went back to wordpress
- Back to drawing board, did some research on how people blog in 2015/2016
- After a while reading about jekyll and similar solutions realized that there is 3rd party service called tinypress, which could be used to post to github hosted jekyll page.
- The idea to write jekyll template from scratch, got bored, since it is not only about jekyll, but building a mobile friendly site < more that I was prepared to deal with
- Evil hackish plans growing, decided to go with more "Do it fast to get something working, fix it later" approach. < It went really really fast from this point on.
- Found [lanyon theme](https://github.com/poole/lanyon), uploaded it and add some posts using tinypress
- Changing the theme slightly > at this point there is a working / online blog without even running jekyll offline on my machine [https://brontosaurusrex.github.io/2016/01/02/1st-tinypress-post/](https://brontosaurusrex.github.io/2016/01/02/1st-tinypress-post/)
- Realized that tinypress has bugs and lacks features (concluded that with some workarounds it is still good enough for scribble posts, which can be later fixed offline with a real text editor or perhaps using github's online one) < 99% of my posts are quick scribbles anyway, so no big deal.
Edit: tinypress replaced with prose.io.
- Being annoyed by the jekyll's idea of "front matter", I mean can't this be automatic or what ..., realized that included metadata is basically a good thing, posts are actually engine-independent on the long run. Saw that github understands "front matter" at some level. Edit: prose.io deals with frontmatter automagically as well if configured corectly.
- Actually installed jekyll offline to do some more problematic positioning of the elements and some other hacks to the theme.

Now the posting speed is almost equal to using wordpress (after about 20 days of using this), decided that images should all be hosted by 3rd party providers (thanks to scrots.moe).

Cons:
- Google is slow to index the site, so my "google this page" thingy is kinda useless. Edit: This is highly related to the fact that I don't have a top level domain for this blog.
- Slightly complicated posting (compared to wordpress), there is no server-side image resizing for example.

Pros:
- Obviously using git my site is fully backuped on multiple machines.
- Hosted by not-me, so I don't have to deal with boring server security (should be easily regenerated and uploaded to any server if github drops).

## Comments?

So this is statically build site and I don't particulary fancy the idea of plugin in disqus or any 3rd party service like that, but you may use [githubs "issues" device](https://github.com/brontosaurusrex/brontosaurusrex.github.io/issues/new) for expressing your thoughts. 

## Me?

Videographer, Linux entusiast, Blender noob, slightly interested in web as well, always wanted to fly.

