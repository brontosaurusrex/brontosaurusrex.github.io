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

Figure out the guid manually by inspecting the settings.json. (There should be a way to do this automagically, but my 'Bookworm' is not listed in 'wsl --list' for some reason)

    "guid": "{1cd9302d-337e-54e1-bb87-c45069dc5a47}", < This
    "hidden": false,
    "icon": null,
    "name": "bookworm (12)",
    "scrollbarState": "hidden",
    "source": "Windows.Terminal.Wsl"
    etc ...

Do the jq magic

    cp settings.json setting.json.bak || exit # backup
    jq '(.profiles.list[] | select(.guid == "{1cd9302d-337e-54e1-bb87-c45069dc5a47}")).font.face = "Fira Code"' settings.json > tmp.json && mv tmp.json settings.json
