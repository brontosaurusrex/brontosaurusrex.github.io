---
layout: page
title: about
published: true
---

## This blog operates under these principles

> Freedom of speech is the right to communicate one's opinions and ideas without fear of government retaliation or censorship. The term *freedom of expression* is sometimes used synonymously, but includes any act of seeking, receiving, and imparting information or ideas—regardless of the dinosaur used.

## Privacy

/me does NOT track, log, spy on, or in any way remain aware of the user's presence on this site.

This blog is hosted using third-party tech, currently:  
- [GitHub Pages](https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-privacy-statement)  
- [Imgur image hosting](https://imgur.com/privacy)  
- [Imgbox image hosting](https://imgbox.com/privacy)

Where /me is [neither Controller nor Processor](https://advisera.com/eugdpracademy/knowledgebase/eu-gdpr-controller-vs-processor-what-are-the-differences/). Their rules apply.

## Comments?

This is a statically built site, and I don’t particularly fancy plugging in Disqus or any third-party service like that—but you may use [GitHub's "issues" device](https://github.com/brontosaurusrex/brontosaurusrex.github.io/issues/new) to express your thoughts.

## Me?

Videographer, Linux enthusiast, Blender noob, kind of into web pages. Always wanted to fly. Accidental impressionist and post-gravitational artist.

## Tinkering and development (very old, but keeping this text here for historical purposes)

### I went through this (running away from WordPress):

- Built a blog from scratch (with a Bash engine—it was slow, but kinda worked) and actually had a nice search-engine-like index.
- Realized that without some sort of web interface, writing blogs would be really boring and slow...
- Took a long pause, almost went back to WordPress.
- Returned to the drawing board and did some research on how people blogged in 2015/2016.
- After reading about Jekyll and similar solutions, discovered a third-party service called Tinypress that could post to a GitHub-hosted Jekyll page.
- Thought about writing a Jekyll template from scratch—got bored, since it’s not just about Jekyll, but also building a mobile-friendly site < more than I was prepared to deal with.
- Evil hackish plans grew; decided to go with a “do it fast to get something working, fix it later” approach. < It went really, really fast from that point on.
- Found the [Lanyon theme](https://github.com/poole/lanyon), uploaded it, and added some posts using Tinypress.
- Modified the theme slightly > at this point there was a working/online blog without even running Jekyll offline on my machine: [https://brontosaurusrex.github.io/2016/01/02/1st-tinypress-post/](https://brontosaurusrex.github.io/2016/01/02/1st-tinypress-post/)
- Realized Tinypress has bugs and lacks features. Concluded that with some workarounds, it’s still good enough for scribble posts, which can later be fixed offline with a real text editor—or maybe GitHub’s online one. < 99% of my posts are quick scribbles anyway, so no big deal.

_Edit:_ Tinypress was replaced with Prose.io.  
_Edit 2:_ Nowadays it’s a script called ['newPost'](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/bin/newPost) and Vim/Geany.

- Annoyed by Jekyll’s idea of “front matter” (can’t this be automatic or what...?), but eventually realized that included metadata is actually a good thing—posts are engine-independent in the long run. GitHub understands front matter to some extent.  
_Edit:_ Prose.io handles front matter automagically if configured correctly.

- Actually installed Jekyll offline to do some more problematic element positioning and other theme hacks.

### Cons:
- Google is slow to index the site, so my “Google this page” thing is kinda useless.  
  _Edit:_ This is probably because I don’t have a top-level domain.
- Slightly complicated posting (compared to WordPress). For example, no server-side image resizing.

### Pros:
- Since I use Git, my site is fully backed up on multiple machines.
- Hosted by someone else, so I don’t have to deal with boring server security.  
  _(Should be easy to regenerate and upload to any server if GitHub drops it.)_
