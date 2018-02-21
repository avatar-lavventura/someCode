#!/bin/bash
sudo apt-get install localepurge
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

sudo du -cha --max-depth=1 / | grep -E "M|G"
