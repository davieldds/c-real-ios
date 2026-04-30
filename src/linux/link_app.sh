#!/usr/bin/env bash

set -euo pipefail

TARGET_DIR="$HOME/creal"
LINE='export PATH="$HOME/creal:$PATH"'

SHELL_NAME="$(basename "${SHELL:-}")"

if [ "$SHELL_NAME" = "bash" ]; then
    RC_FILE="$HOME/.bashrc"
elif [ "$SHELL_NAME" = "zsh" ]; then
    RC_FILE="$HOME/.zshrc"
else
    RC_FILE="$HOME/.profile"
fi

touch "$RC_FILE"

if grep -Fxq "$LINE" "$RC_FILE"; then
    echo "PATH entry already exists in $RC_FILE"
else
    echo "" >>"$RC_FILE"
    echo "# Add creal to PATH" >>"$RC_FILE"
    echo "$LINE" >>"$RC_FILE"
    echo "Added ~/creal to PATH in $RC_FILE"
fi

echo "Run this to apply it now:"
echo "source \"$RC_FILE\""
