#!/bin/bash
sudo sed 's/#user/user/g' /etc/fuse.conf
sudo pacman -S libgit2
sudo mkdir -p /var/lib/gitfs
sudo chown -R $(whoami):$(whoami) /var/lib/gitfs
sudo gitfs -h
sudo python setup.py install --optimize=1

