#!/usr/bin/env bash

# Remove the $ before running_apps (variables in Bash don't use $ when being assigned)
running_apps=$(wlrctl window list | grep -v -E "com.system76.CosmicFiles|com.mitchellh.ghostty|Zen Browser|Visual Studio Code" | grep -oP '^[^:]+' | sed -n "$@")

# Use double brackets [[ ]] for string tests in Bash
if [[ -n "$running_apps" ]]; then
    wlrctl window focus "$running_apps"
fi

