---
published: true
layout: post
date: '2017-04-09 22:28 +0200'
title: robots.txt
tags: web
---
[Robots.txt](https://brontosaurusrex.github.io/robots.txt) has changed, now disallowing /page stuff. Test [this](https://www.google.com/search?q=driveimage+site:brontosaurusrex.github.io) in few days for example.

![googleSearch.jpg]({{site.baseurl}}/media/googleSearch.jpg)

fix: 'be'

edit: Yeah, that did work for a day or two, but for no special reason google find pages as well now. How about some changes to config.yml, like swaping the order of gems

    # from
    gems: 		[jekyll-paginate, jekyll-sitemap]
    # to
    gems: 		[jekyll-sitemap, jekyll-paginate]
    
That way sitemap will be generated before paginate and no /pages will be mentioned there.

edit2: That did't work either, now let's try to remove link to sitemap...

![dissalow.png]({{site.baseurl}}/media/dissalow.png)

[https://www.google.com/webmasters/tools/robots-testing-tool](https://www.google.com/webmasters/tools/robots-testing-tool)

