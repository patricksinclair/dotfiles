#!/bin/bash
# Helix Python formatter: Black -> isort -> Ruff
# $1 is the file path from Helix

# Exit if no file path provided
[ -z "$1" ] && exit 1

# Run Black
black "$1"

# Run isort
isort "$1"

# Run Ruff autofixes
ruff --fix "$1"
