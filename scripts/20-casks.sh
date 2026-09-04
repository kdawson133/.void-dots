#!/bin/bash
cd ~/Downloads
# Install 1password
curl -sSO https://downloads.1password.com/linux/tar/stable/x86_64/1password-latest.tar.gz
sudo tar -xf 1password-latest.tar.gz
sudo mkdir -p /opt/1Password && sudo mv 1password-*/* /opt/1Password
sudo /opt/1Password/after-install.sh

# Install Brave-Origin
sudo xbps-install -R https://github.com/VUP-Linux/vup/releases/download/browsers-x86_64-current -S brave-origin
# Install Zed
sudo xbps-install -R https://github.com/VUP-Linux/vup/releases/download/editors-x86_64-current -S zed
# Setup Flatpak
sudo xbps-install -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.tchx84.Flatseal
# Install Obsidian
flatpak install flathub md.obsidian.Obsidian
# Install Plex Desktop
flatpak install flathub tv.plex.PlexDesktop
# Install Plexamp
flatpak install flathub com.plexamp.Plexamp
# Install Sone
flatpak install flathub io.github.lullabyX.sone

