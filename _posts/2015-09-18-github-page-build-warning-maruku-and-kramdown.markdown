---
published: true
title: Github Page build warning, Maruku and Kramdown
layout: post
---
If you received a page build warning email that you should change your Markdown interpreter, it is time to switch from Maruku to Kramdown.

Github uses Maruku as the default Markdown interpreter but Maruku is now considered obsolete and may cause builds to unexpectedly fail. While Github plans to eventually change their default interpreter, you can set one yourself by adding the line

    markdown: kramdown

to your **_config.yml** file. To do so,

1. Go to your Github page repo, e.g. *github.com/tinypressco/tinypressco.github.io*
2. The directory tree will be shown. Click the **_config.yml** file. This will show the content of the config file.
3. Click the **edit** button.
4. Add the line **markdown: kramdown** to the file now in edit mode.
5. [Add your commit info and] Click the **Commit changes** button.

If you are creating a fresh blog with [Tinypress](tinypress.co), this will be automatically done for you.

You can read more about migrating from Maruku here: [help.github.com/articles/migrating-your-pages-site-from-maruku](https://help.github.com/articles/migrating-your-pages-site-from-maruku)