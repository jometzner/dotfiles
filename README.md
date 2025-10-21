# My own dotfiles repository
Idea for this approach originated from https://www.atlassian.com/git/tutorials/dotfiles

Later I found a nice article showing https://www.chezmoi.io/

# Prerequisites #
This setup requires toolbox and Fedora Silverblue as host system.

# Install #
```
toolbox create --image quay.io/jometzner/chezmoi:42 chezmoi
toolbox enter chezmoi
chezmoi init --recurse-submodules=false jometzner
chezmoi apply
```
