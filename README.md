# My own dotfiles repository
Idea for this approach originated from https://www.atlassian.com/git/tutorials/dotfiles

Later I found a nice article showing https://www.chezmoi.io/

# Prerequisites #
```
dnf install -y curl git util-linux
```
User must be in group `wheel` for being able to `sudo`.

# Install #
```
sh -c "$(curl -fsLS https://chezmoi.io/get)"
chezmoi init --recurse-submodules=false jometzner
chezmoi apply
```
