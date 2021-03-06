#!/bin/bash

# Install Swift dependencies
sudo apt-get install -y clang-3.6 libicu-dev
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100



# Download Swift toolchain
wget https://swift.org/builds/swift-4.0.3-release/ubuntu1404/swift-4.0.3-RELEASE/swift-4.0.3-RELEASE-ubuntu14.04.tar.gz \
  -O /tmp/swift-4.0.3-RELEASE-ubuntu14.04.tar.gz

# Unpack and install swift
cd /tmp
tar -zxvf swift-4.0.3-RELEASE-ubuntu14.04.tar.gz
mv swift-4.0.3-RELEASE-ubuntu14.04 /home/vagrant/swift-4.0.3

# Setup environment
echo 'export PATH="${PATH}:/home/vagrant/swift-4.0.3/usr/bin"' >> /home/vagrant/.bashrc
