---
published: true
layout: post
date: '2025-07-13 20:12'
title: bak script
tags: cli bash 
---
## 'Simple' version

How would a simple (but not to simple) backup script look like? (something to avoid `cp script script.bak` nonsense). After some long talk with my best friend Chad Gpt I came up with this:

 - Make script relatively simple
 - Don't bother with directories (will only work with files)
 - Don't pollute current dir, backup to predefined folder instead
 - Avoid duplicates via checksums
 - Have timestamps to simulate basic version control
 - Store with full paths
 - Make shellcheck happy

So for example

    bak shell.script

will copy that shell.script to predefined `$HOME/bak` and store sha265 into `$HOME/bak/.bak_index`

Not tested very much, hot script  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/bak>

In action

    ❯ echo "one" > script

    ❯ cat script
    one

    ❯ bak script
    ✓ Backed up 'script' → '/home/b/bak/home/b/tmp/script.20250713-220753'

    ❯ bak script
    ✗ Skipping 'script' — identical content already backed up

    ❯ echo "two" >> script

    ❯ bak script
    ✓ Backed up 'script' → '/home/b/bak/home/b/tmp/script.20250713-220811'

    ❯ bak script
    ✗ Skipping 'script' — identical content already backed up

    ❯ tree -a ~/bak
    /home/b/bak
    ├── .bak_index
    └── home
        └── b
            └── tmp
                ├── script.20250713-220753
                └── script.20250713-220811

    4 directories, 3 files

p.s. 'restore/unbak' is up to the user manual labor.

Debate? <https://forums.bunsenlabs.org/viewtopic.php?pid=144462#p144462>

## 'Git' version

Could look like  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/gitbak>

Again, restore is up to the user and depends on the git knowhow.