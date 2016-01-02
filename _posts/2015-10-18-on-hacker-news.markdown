---
published: true
title: On Hacker News!
layout: post
---
Hey there!

If you are coming to TinyPress from hacker news please feel free to ping me for feature requests. I know you guys are mostly programmers like myself, so I'm happy to dig into it with any of you. :)

[https://news.ycombinator.com/item?id=10409179](https://news.ycombinator.com/item?id=10409179)

Cataloging feature requests:

- <strong>Finished demo w/posts.</strong> I've decided to rebuild the gif on the homepage. It will include a demo and full walk through of the product from start to finish. This should help people understand how the product works. In the meantime this blog post you are reading is rendered using our "Hyde" theme. It's quite nice!
- <strong>Custom domains.</strong> We currently offer custom domains but the setting is buried, and we don't mention it on the homepage - so I will be adding a line item on the homepage for this feature.
- <strong>Post how-tos on the new post page.</strong> I've decided to add a link on the new post page to a single tinypress blog post that shows you exactly how to insert syntax using our syntax highlighting, and other common questions I get from people not familiar with Jekyll. This is coming soon.
- <strong>Potentially open source the web-app and Android app.</strong> I'm starting to think the philosophy of an "open source writing platform" needs to be powered by an open source writing application. The fact that we are closed source doesn't feel like the right move. I need to think on this more, but we have a thread about this in the hacker news comment section. I'd love to hear more opinions on this.
- <strong>Users on already existing GitHub pages blogs experience issues.</strong> I'm getting reports of a few bugs with regard to users who already have GitHub pages blogs - such as posts showing "draft" in front of them on TinyPress, and post content not showing up etc. This is because TinyPress does not correctly interpret the state of a user if they already have a blog that has configuration that in any slight way differs from what we expect. I'm going to be adding more robustness to this over the week.
- <strong>Overall non-intuitive UX/UI.</strong> Getting reports that the overall execution of the posts, configuration, etc is not very intuitive. I agree with this, and will be thinking of ways to optimize for this over the next few weeks.
- <strong>Android app about page has a typo and links to the wrong twitter account.</strong> Embarrassing. Submitting fix for this within a day or two.
- <strong>If you've installed the Android app and then changed your GitHub username the app constantly crashes.</strong> This is a sign of a deeper issue in the Android app code, and I'll be digging into this as soon as I can.
- <strong>Markdown live preview.</strong> Because nobody likes to hit a button, especially when they know they don't technically have to.
- <strong>Full screen writing area.</strong> Because it's nice.
- <strong>Ability for others to comment on blog posts.</strong>
- <strong>WordPress import.</strong>
- <strong>Allow any user to add themes.</strong> Currently technically possible by contacting me with open source theme repo, make this more clear.
- <strong>GitHub markdown support.</strong>
- <strong>Users want to use tinypress in a separate repo project (/repo.github.io/project).</strong>

Bugs (User reported):

- Sometimes I've noticed when I use non alphanumeric characters (such as : or -) in the post title, it shows no title, but in github it does show it right. this is not always happening so it's hard to replicate sometimes.
- Users with unique characters in their names get crashes everytime when we parse the _config.yml file.
- Blog post images are not responsive and therefore break the layout of the otherwise responsive design