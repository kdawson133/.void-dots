#!/usr/bin/sh
# Enable Repos
sudo xbps-install -y void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree

# Update Repos
sudo xbps-install -Su

# Install Main packages
sudo xbps-install -y vim neovim dbus elogind polkit xorg xorg-fonts xorg-input-drivers NetworkManager bluez libspa-bluetooth pipewire alsa-pipewire wireplumber playerctl ddcutil xdg-user-dirs rsync unzip gzip xz 7zip

# Install CLI tools
sudo xbps-install -y curl wget wl-clipboard xsel xclip nodejs bat eza base-devel helix starship zsh stow fd ripgrep fzf zoxide

# Install Fonts
sudo xbps-install -y font-Hasklig nerd-fonts-otf nerd-fonts-symbols-ttf

# Install Nvidia Driver
# Now located in 01-nvidia.sh
# sudo xbps-install -y nvidia

# Add Services
#sudo ln -s /etc/sv/gdm /var/service
sudo ln -s /etc/sv/NetworkManager /var/service
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/polkitd /var/service
sudo ln -s /etc/sv/bluetoothd /var/service
sudo ln -s /etc/sv/elogind /varservice

# Configure Pipewire
sudo mkdir -p /etc/xdg/autostart
sudo ln -sf /usr/share/applications/pipewire.desktop /etc/xdg/autostart
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -sf /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d
sudo ln -sf /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d
sudo mkdir -p /etc/alsa/conf.d
sudo ln -sf /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
sudo ln -sf /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

# Configure User Dirs
xdg-user-dirs-update
