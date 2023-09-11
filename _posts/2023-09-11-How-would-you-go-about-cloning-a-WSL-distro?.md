---
published: true
layout: post
date: '2023-09-11 06:59'
title: How would you go about cloning a WSL distro?
tags: linux 
---
## Export and Import under different name

<https://superuser.com/questions/1589877/how-do-you-clone-a-wsl-distro>

From powershell

	wsl.exe --export OriginalDistributionName FileName
	wsl.exe --import ClonedDistributionName InstallLocation FileName
	wsl --distribution ClonedDistributionName

## setup a default user if the new instance starts with root

<https://superuser.com/questions/1566022/how-to-set-default-user-for-manually-installed-wsl-distro>

Create

	/etc/wsl.conf

with

	[user]
	default=username
