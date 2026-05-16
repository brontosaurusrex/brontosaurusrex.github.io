---
published: true
layout: post
date: '2026-05-06 5:00'
title: Note taking script
tags: bash linux ai
---
## note

[Note taking bash script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/note).

needs: fzf, ripgrep (rg)

    note --help
    
    Usage:

      note n "title"          → new note with explicit title
      note "text"             → create/reopen note
      note l                  → list
      note o                  → open (fzf)
      note s                  → search (rg|fzf)
      note c                  → cat latest
      note rm                 → move to .trash
      note pull               → git pull
      note push               → git push
      note --longhelp | less  → full help
      note h                  → this help

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

Text editor, by default $EDITOR variable is used, if undefined it will try to load hx (helix) or vim or nano. Configure to your needs. By default notes will be stored in $HOME/notes, configure as needed.


Not needing the specific title is the idea as well, so

    note nice weather today

shall make a note with filename '2026-04-27-nice-weather-today.md'.

## misc

#### about fzf scrolling

Up and down will select files, shift+up and shift+down will scroll the text pane on the right (mice should also work).

Scrot ('open note' fzf tui):
![note image](/media/note.png)

#### Note syncing

of $HOME/notes is up to the user. I use git.

#### noteurls ('plugin')

[Separated script with similar](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/noteurls) tui that will extract urls from notes and open one or two in browser (tab toggles selected). 

#### llm-md-fix

[Fix markdown using local gemma4 model.](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/llm-md-fix) Will write 'fixed' version to stdout.

    ╭───────────────────────────────────────────────────────────────────────╮
    │ llm-md-fix — clean Markdown using a local LLM                         │
    │                                                                       │
    │ USAGE:                                                                │
    │   llm-md-fix file.md        # rewrite file content                    │
    │   cat file.md | llm-md-fix  # pipe input                              │
    │   llm-md-fix                # reads stdin                             │
    │                                                                       │
    │ OPTIONS:                                                              │
    │   -h, --help    Show this help                                        │
    │                                                                       │
    │ DESCRIPTION:                                                          │
    │   Converts messy text into clean Markdown using a local Ollama model. │
    │                                                                       │
    │   Rules applied:                                                      │
    │     - preserves content                                               │
    │     - fixes Markdown structure                                        │
    │     - converts raw URLs to Markdown links (when possible)             │
    │     - preserves YAML frontmatter                                      │
    │     - outputs ONLY Markdown                                           │
    │                                                                       │
    │ ENV:                                                                  │
    │   MODEL   Ollama model name (default: gemma4)                         │
    │                                                                       │
    │ EXAMPLES:                                                             │
    │   llm-md-fix notes.md                                                 │
    │   cat notes.md | llm-md-fix                                           │
    │   echo "https://example.com" | llm-md-fix                             │
    ╰───────────────────────────────────────────────────────────────────────╯

#### noteweb

[Display notes in localy generated html page](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/noteweb) (needs rewrite).

#### pipe to

Find the 1st note that has 'jobs' in the title and pipe to terminal markdown renderer:

    note c jobs | glow -w 120

Pretty neat markdown render in terminal. Glow is in Trixie repos.