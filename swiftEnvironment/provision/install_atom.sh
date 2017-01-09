#!/bin/bash
# Install Atom dependencies
sudo apt-get install -y git gconf2 gconf-service gvfs-bin xdg-utils libxss1 libnss3

# Download Atom
wget https://github.com/atom/atom/releases/download/v1.12.9/atom-amd64.deb -O /tmp/atom-amd64.deb

# Install Atom
sudo dpkg -i /tmp/atom-amd64.deb

# Install Swift packages
apm install language-swift swift-debugger autocomplete-swift
