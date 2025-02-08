#!/bin/zsh
# Ensure we're using the correct Python environment and have tiktoken installed
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
VENV_DIR="$SCRIPT_DIR/../.venv"

if [[ ! -d "$VENV_DIR" ]]; then
    uv venv "$VENV_DIR"
fi

source "$VENV_DIR/bin/activate"
uv pip install tiktoken >/dev/null 2>&1

python3 "$SCRIPT_DIR/count_tokens.py" "$@"