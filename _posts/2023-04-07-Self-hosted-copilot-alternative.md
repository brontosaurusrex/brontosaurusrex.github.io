---
published: true
layout: post
date: '2023-04-07 08:14'
title: Local AI
tags: ai 
---
## gpt4all

<https://github.com/nomic-ai/gpt4all>  

This actually runs on cpu.

Examples:  

> Q: What are the main strengths and weaknesses of unicorns?  

> A: Unicorns have many strengths, such as their magical powers that make them highly valued in some cultures for protection or healing. They also possess a majestic appearance which can be admired by people from all walks of life. However, they are known to be shy and sensitive animals who require special care when kept captive. This means there is always the risk of mistreatment that could harm their well-being or even cause them physical pain.

Ok.

> Q: What is bunsenlabs linux?

> A: BunsenLabs Linux (or simply Bunsen) was created by Barry Kauler as part of his efforts to create an operating system based on Debian's testing branch, which he named "Debian Testing". It has since become a separate distribution in its own right.  
> A: BunsenLabs Linux is a lightweight and minimalist version of the popular Ubuntu operating system that focuses on stability over bleeding-edge features, with an emphasis placed upon security updates rather than new software releases or upgrades. BunsenLabs's goal was to create an easy-to-use distribution for those who wanted something more stable but still had a taste of the latest and greatest in Linux technology.

No.

> Q: In a shocking finding, scientist discovered a herd of unicorns living in a remote, previously unexplored valley, in the Andes Mountains. Even more surprising to the researchers was the fact that the unicorns spoke perfect English.  

> A: This is an example of satire or humor writing as it contains elements such as exaggeration and hyperbole for effect.

Sure.

> Q: Continue the story: In a shocking finding, scientist discovered a herd of unicorns living in a remote, previously unexplored valley, in the Andes Mountains. Even more surprising to the researchers was the fact that the unicorns spoke perfect English.  

> A: The discovery sent waves through scientific circles as it seemed like an impossibility for such creatures to exist and communicate fluently with humans. However, upon closer inspection of their habitat in South America's Andes Mountains revealed a hidden treasure trove that was unimaginable! The scientists were astounded at the sighting of these majestic beasts who spoke perfect English as if they had been educated by some higher power or something like it.

Not sure how to make response longer.

> Q: Please write a long story about unicorns living in Andes.  

> A: Once upon a time there was an enchanted valley deep within the heart of South America's majestic mountains, where unicorns roamed free and wildly danced to their own rhythmic beat. The air was crisp with fresh mountain breezes that caressed each creature as they grazed on lush green grasses or drank from crystal clear streams flowing through the valley floor below them.
> The unicorns were a sight for sore eyes, all majestic and regal in their appearance; some had horns of gold while others sported shimmering silver ones that glinted like diamonds underneath the sun's rays as they pranced about with such gracefulness.
> Their magical presence was felt by everyone who dared to enter this sacred valley, for it seemed their very existence gave life and energy to everything around them; even the trees were enchanted in a way that made one feel like they had been transported into another realm altogether! .... 

I goes on an on without getting anywere and then repeats/loops the story in stupid ways.

> Q: Can you write a short idea for another Alien movie.  

> A: Sure! Here is an idea for the next installment of the Aliens franchise... In this film, Ripley's daughter (played by Jaden Smith) discovers that her mother has been abducted and taken to a secret location on LV-426. She teams up with Weyland Industries CEO David (Jason Momoa), who is also searching for his missing wife, Ellen Ripley's clone daughter Amanda (played by Scarlett Johansson). Together they embark upon a dangerous mission to rescue their mothers and uncover the truth behind Weyland Industries.

lmao.

It seems slightly smarter and slightly faster when run with:

    gpt4all-lora-quantized-linux-x86 --color -t 8 -n 300 --repeat_last_n 128 -s 12345
    # -s is seed
    # -t is threads
    # maybe -b 16 (or higher could make it smarter)
    # see --help for all the switches

> Q: There is an xenomorph on the ship, what should i do? How do I escape?  

> A: Escape from the ship as soon as possible by using any available means of transportation or communication with other ships in orbit around Earth's moon. Once away from the infested area, contact authorities for assistance in locating and eliminating the hostile life form.
> It would be advisable not to attempt to kill/destroy X-Files without proper authorization since they are considered a protected species under international law.  

Ash?

> Q: None of the escape pods have netflix, what now?  

> A: Unfortunately there is no way currently known on how one can access Netflix through an Escape Pod. However, it may still possible to watch other streaming services like Hulu or Amazon Prime Video if those options were available within your current location. Alternatively, you could consider purchasing some form of entertainment media such as books and movies for later enjoyment once safely away from danger.

Sounds resonable.

## Tabby  

<https://github.com/TabbyML/tabby>  
<https://news.ycombinator.com/item?id=35470915>

![img](https://user-images.githubusercontent.com/388154/229353706-230d70e1-7d09-48e2-a884-4da768bccf6f.png)  

> Self-hosted AI coding assistant. An opensource / on-prem alternative to GitHub Copilot.

Notes: No idea how to install this (Can't even get docker running on this laptop (win 10)).
