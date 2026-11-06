#!/usr/bin/env sh
# EYE OF CREATION launcher for macOS / Linux
cd "$(dirname "$0")" || exit 1
PY=python3
command -v python3 >/dev/null 2>&1 || PY=python
$PY -c "import pygame, numpy" >/dev/null 2>&1 || $PY -m pip install -r requirements.txt
exec $PY eye_of_creation.py "$@"
