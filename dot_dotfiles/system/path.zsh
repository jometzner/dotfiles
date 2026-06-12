#!/bin/sh
PATH=~/go/bin:~/.local/bin:$PATH
export PATH
export SDKMAN_DIR="$HOME/.sdkman"
export _ZO_EXCLUDE_DIRS=~/work/gradle2
export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock
