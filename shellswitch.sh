#!/bin/bash

current_shell=$(basename "$SHELL")

echo "Current shell: $current_shell"

if [ "$current_shell" = "bash" ]; then
    echo "Switching to Zsh..."
    chsh -s /bin/zsh
elif [ "$current_shell" = "zsh" ]; then
    echo "Switching to Bash..."
    chsh -s /bin/bash
else
    echo "Unsupported shell: $current_shell"
fi

echo "Done."
