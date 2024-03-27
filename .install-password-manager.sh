#!/bin/bash
set -eufo pipefail
# exit immediately if password-manager-binary is already in $PATH
type ~/.local/bin/keeper >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    # commands to install password-manager-binary on Darwin
    ;;
Linux)
    # commands to install password-manager-binary on Linux
    type pip3 >/dev/null 2>&1 || sudo dnf install -y python3-pip
    pip3 install keepercommander
    keeper --config ~/config.json this-device persistent-login on
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac


