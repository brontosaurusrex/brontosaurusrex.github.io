---
published: true
layout: post
date: '2017-06-23 08:24 +0200'
title: How to make a website that won't get blocked by users
tags: mine web
---
## 1st draft, for web "masters"

- Don't cookie me if it is not really technically essential and don't inform me that you will cookie me.. (at least not until I log in into your system)
- Advertize from your own domain, example:

Buy some cookies
![]({{site.baseurl}}/media/cookies.png)

- Do not use 3rd party services to log user info for statistical or any usage. Remember: metadata can kill. You will not own the data collected that way and you will have no saying on how it will be used.
- Do not track, spy or collect any user data for more than session length if techinally needed. Invent ways that this is reduced to minimum.
- Use https and encript user data if you are mail provider. Make sure only owner can access/read data in their mailboxes.
- Do not inform me to remove my ad blocker, it is your turn to fix things, not mine.

## for users, inform the page that your rules are slightly different

    # this will inform page https://www.some.com about my rules of the game:
    curl -e "No Cookies Please, Do not track and spy. Do not inform me about my ad blocker. \
    Go home and rethink your life." -A "User" https://www.some.com/
    
### alias inform

    alias inform='curl -e "No Cookies Please, Do not track and spy. Do not inform me about my ad blocker. Go home and rethink your life."  -A "User"
    # usage: inform http://url
