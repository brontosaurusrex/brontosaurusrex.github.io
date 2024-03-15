---
published: true
layout: post
date: '2024-03-15 08:37'
title: Best Practices for API Key Safety
tags: linux cli bash 
---
[https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)

	echo "export SOME_API_KEY='yourkey'" >> ~/.zshrc
	# or .~/bashrc

and the script can then just read the key

	key="$SOME_API_KEY"

Note that the key is still stored in plain text.

Something about encryption here.
