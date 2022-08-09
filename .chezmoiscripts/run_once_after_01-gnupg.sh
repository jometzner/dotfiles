#!/bin/bash
set -ev pipefail
keeper download-attachment 8pKveunxybDeLBoa169HyA --config ~/config.json
gpg --import <key.pub
rm -f key.pub