#!/bin/sh
# Enable Repos
sudo xbps-install -y void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
# Install Nvidia Driver
sudo xbps-install -y nvidia
