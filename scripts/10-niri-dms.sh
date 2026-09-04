#!/bin/bash
# Add dms repo
echo "repository=https://void.danklinux.com/dms/current" | sudo tee /etc/xbps.d/dms.conf
echo "repository=https://void.danklinux.com/danklinux/current" | sudo tee /etc/xbps.d/danklinux.conf

sudo xbps-install -Su

# Install Desktop Packages
sudo xbps-install niri dms dms-greeter danksearch dankcalendar dex greetd fuzzel alacritty power-profiles-daemon xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal gnome-keyring gnome-themes-standard gnome-themes-extra polkit-gnome nautilus fastfetch xwayland-satellite firefox

# Enable Power Profile Daemon
sudo ln -s /etc/sv/power-profiles-daemon /var/service

# Set Dark Mode system wide
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"


