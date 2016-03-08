---
published: true
title: ban .DS_store from git
layout: post
---
from  
<http://stackoverflow.com/questions/107701/how-can-i-remove-ds-store-files-from-a-git-repository>

> Remove existing files from the repository:
>
>     find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
>
> Add the line
>
>     .DS_Store
>
> to the file .gitignore, which can be found at the top level of your repository (or created if it isn't there already). Then
>
>     git add .gitignore 
>     git commit -m '.DS_Store banished!'
