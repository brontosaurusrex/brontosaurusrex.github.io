---
published: true
layout: post
date: '2025-06-14 18:30'
title: Change WSL font from inside WM?
tags: cli bash linux 
---
Get the path

    # get linux path to windows %LOCALAPPDATA%
    # and assume the rest is hardcoded
    wslpath="$(wslpath "$(cmd.exe /c "echo %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState" | tr -d '\r')")"

    # All these methods assume WSL is installed under the 'current user profile' (not as system-wide).
    cd "$wslpath" || exit

    pwd

    head settings.json

Assumes current user profile type of installation ...

Do the jq magic

    cp settings.json setting.json.bak || exit # backup
    jq '(.profiles.list[] | select(.name == "bookworm (12)")).font.face = "Fira Code"' settings.json > tmp.json
    cp tmp.json settings.json

Unclear at this point on how to get the name of the distro currently active automagically, that is "bookworm (12)" in this example.
