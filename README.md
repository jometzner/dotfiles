# My own dotfiles repository
Idea for this approach originated from https://www.atlassian.com/git/tutorials/dotfiles

Later I found a nice article showing https://www.chezmoi.io/

# Prerequisites
This setup requires toolbox and Fedora Silverblue as host system.

# Install dotfiles
```
toolbox create --image quay.io/jometzner/chezmoi:42 chezmoi
toolbox enter chezmoi
chezmoi init --recurse-submodules=false --branch main jometzner
chezmoi apply
```

# Setup for openvpn3
```
sudo curl -L https://copr.fedorainfracloud.org/coprs/dsommers/openvpn3/repo/fedora-42/dsommers-openvpn3-fedora-42.repo -o /etc/yum.repos.d/_copr\:copr.fedorainfracloud.org\:dsommers\:openvpn3.repo
sudo curl -L https://download.copr.fedorainfracloud.org/results/dsommers/openvpn3/pubkey.gpg -O
sudo install -o 0 -g 0 -m644 pubkey.gpg /etc/pki/rpm-gpg/openvpn3.gpg
sudo sed -i 's|gpgkey=.*|gpgkey=file:///etc/pki/rpm-gpg/openvpn3.gpg|' /etc/yum.repos.d/_copr\:copr.fedorainfracloud.org\:dsommers\:openvpn3.repo
sudo rpm-ostree install openvpn3-client openvpn3-selinux
sudo mkdir -p /etc/openvpn3/selinux
sudo bzcat /usr/share/selinux/packages/openvpn3.pp.bz2 > /etc/openvpn3/selinux/openvpn3.pp
sudo semodule -i /etc/openvpn3/selinux/openvpn3.pp
sudo semanage boolean --m --on dbus_access_tuntap_device
openvpn3 config-import --config ~/.system-connections/INDI.ovpn --name INDI --persistent
```

# Setup for openvpn3 indicator
```
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
sudo curl -L https://copr.fedorainfracloud.org/coprs/grzegorz-gutowski/openvpn3-indicator/repo/fedora-43/grzegorz-gutowski-openvpn3-indicator-fedora-42.repo -o _copr\:copr.fedorainfracloud.org\:grzegorz-gutowski\:openvpn3-indicator.repo
sudo rpm-ostree refesh-md
sudo rpm-ostree install openvpn3-indicator
```

# Setup for Terminator or Ghostty
```
rpm-ostree install terminator
```
```
curl -fsSL "https://copr.fedorainfracloud.org/coprs/scottames/ghostty/repo/fedora-42/scottames-ghostty-fedora-42.repo" | sudo tee /etc/yum.repos.d/_copr:copr.fedorainfracloud.org:scottames:ghostty.repo > /dev/null
rpm-ostree refresh-md
rpm-ostree install ghostty
```
