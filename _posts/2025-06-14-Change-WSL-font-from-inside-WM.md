---
published: true
layout: post
date: '2025-06-14 18:30'
title: Change WSL font from inside WM?
tags: cli bash linux 
---
Get the path

    # Get windows username
    win_user=$(cmd.exe /c "echo %USERNAME%" | tr -d '\r') || exit
    echo "Windows username: $win_user"

    # All these methods assume WSL is installed under the current user profile (not as system-wide).
    cd "$(wslpath -a C:\\Users\\${win_user}\\AppData\\Local\\Packages\\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\\LocalState)" || exit

    pwd

    head settings.json

Assumes current user profile type of installation ...

Do the jq magic

    cp settings.json setting.json.bak || exit # backup
    jq '(.profiles.list[] | select(.name == "bookworm (12)")).font.face = "Fira Code"' settings.json > tmp.json
    cp tmp.json settings.json

Unclear at this point on how to get the name of the distro currently active automagically, that is "bookworm (12)" in this example.
