---
published: true
layout: post
date: '2026-04-18 19:59'
title: Note taking script
tags: bash linux ai
---
## v1

[Note taking bash script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/notev1).    
needs: fzf, ripgrep; likes: batcat

    note --help
    Usage:>
      note + | new "title"
      note l | list
      note   | open [query]
      note c | cat [query]
      note g | grep | s <query>
      note "quick note" (flow.md)
      note h | -h | --help
      (pipe stands for or)
    Storage: /home/b/notes

Multiple parameters to run same command, for example

    note
    # and
    note open

are the same (neat little dual pane tui is presented), and if you add a parameter (file name approximation)

    note open gemma

it will open first filename that has some gemma in there. Search is similar.

    note s

will open neat little tui as well, piping ripgrep output to fzf and behaving like file selector.

    note c

should cat last changed note.

    note list

should list files/notes to stdout, not sure if this is needed (open does similar job).

Text editor, by default $EDITOR variable is used, if undefined it will try to load hx (helix). Configure to your needs. By default notes will be stored in $HOME/notes, configure as needed.

This is by far the most boring script I have (vibe coded) produced, pretty sure there must be gazzilions out there.

## v2

An attempt at simplification of the flow/ux

    note -h
    Usage:
      note "text"         → create/reopen note
      note new "title"    → explicit title
      note l              → list
      note                → open (fzf)
      note c              → cat latest
      note s              → search (rg|fzf)
      note h              → help

Not needing the specific title is the idea, so

    note nice weather today

should produce something. Inbox idea (flow.md) was removed completely.

[Note taking bash script v2](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/note).

edit: 23.4.26 git sync and some cosmetic changes, batcat removed, cat it the real cat.

Scrot ('open note' fzf tui):
![note image](/media/note.png)
