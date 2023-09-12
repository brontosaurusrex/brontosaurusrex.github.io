---
published: true
layout: post
date: '2017-05-24 11:48 +0200'
title: Amazon AWS glacier
tags: web
---
![glacier.png]({{site.baseurl}}/media/glacier.png)

a. First generate a user (note *key id* and *secret key id*) and group. And the group has certain privilegies (Quite a fun to figure out what to clicky there, since each group has a limit of 10 'permission entries').

b. And generate a new glacier instance... and name the storage (in this case name is *shramba*)

c. Install [aws tools](http://docs.aws.amazon.com/cli/latest/userguide/installing.html) (python pip thing)

    # info
    aws glacier describe-vault --vault-name shramba --account-id -

    # upload something
    aws glacier upload-archive --account-id - --vault-name shramba --body images/siteImages.tar.gz
    
[http://docs.amazonaws.cn/cli/latest/reference/glacier/upload-archive.html](http://docs.amazonaws.cn/cli/latest/reference/glacier/upload-archive.html)

If the cli tool is returning some json and you would want text, on Debian the config file is ~/.aws/config, add

    output = text
    
p.s. Inventory is only updated [once per day](https://aws.amazon.com/glacier/faqs/#data-inventories) or so.
