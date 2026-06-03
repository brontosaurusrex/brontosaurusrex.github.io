---
published: true
layout: post
date: '2026-06-01 20:00 +0000'
title: "Fzf preview mine"
tags: cli bash linux 
---
## Mine

Something like that in .zshrc

    # making FZF to look like my fancy note script
    # Black & white - explicitly disable all colors
    export FZF_DEFAULT_OPTS="--no-color --pointer='>' --color=fg:-1,bg:-1,hl:-1,fg+:-1,bg+:-1,hl+:-1,info:-1,prompt:-1,spinner:-1,pointer:-1,marker:-1,border:-1"

    # CTRL-T command - recent files first
    export FZF_CTRL_T_COMMAND='find . -type f -not -path "./.git/*" -printf "%T@ %P\n" 2>/dev/null | sort -nr | cut -d" " -f2-'
    # or faster find with fdfind
    # export FZF_CTRL_T_COMMAND='fdfind . --type f --hidden --exclude .git --strip-cwd-prefix -x stat -c "%Y %n" {} \; 2>/dev/null | sort -nr | cut -d" " -f2-'

    # Preview configuration
    export FZF_CTRL_T_OPTS="
      --no-color
      --prompt='file> '
      --pointer='>'
      --marker='*'
      --bind='tab:toggle'
      --preview='fzf_preview_mine {}'
      --preview-window='right:50%:wrap:noinfo'
      --height=80%
      --reverse"

And the preview script [fzf_preview_mine](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/fzf_preview_mine). Should handle a subset of txt, epub, pdf, video, audio, image files as 2nd pane fzf preview. Needs sixels and some apps like: ffmpeg, mediainfo, mpv, chafa, imagemagick convert (psd), inkscape (svg), atool (preview archives) ...

![fzf_preview](/media/fzf-preview.png)

## Not mine

<https://github.com/juanmitaboada/preview>  
<https://github.com/semi710/fzf-preview/blob/master/fzf-preview>
