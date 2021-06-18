#!/usr/bin/env bash

if [ -f 'minecraft.desktop' ]; then
    printf "Creating Minecraft desktop icon...\n"
    cp minecraft.desktop ~/.local/share/applications/minecraft.desktop
    printf "Done.\n"
fi
