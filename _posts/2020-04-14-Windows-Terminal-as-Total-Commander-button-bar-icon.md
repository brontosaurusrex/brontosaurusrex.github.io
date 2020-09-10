---
published: false
layout: post
date: '2020-04-14 09:09'
title: Windows Terminal as Total Commander button bar icon
tags: 
---
	Command: wt
	Parameters: -d %P

Where -d is part of terminal command and %P is total commander thing.

edit: Actually this won't work with fodlers that have 's p a c e s' in names, workaround that seems to work is to use small p:

    Parameters: -d %p

