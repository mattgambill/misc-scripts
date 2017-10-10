#!/bin/bash
# Date Created; September 2017
# Created by: Matt Gambill
# Script installs neccesary programs on Digitalocean VPS
apt update -y && apt upgrade -y
apt install -y python3-pip davfs2 ffmpeg htop unzip
apt install -y youtube-dl
python3 -V

#mount -t davfs https://dav.box.com/dav mount
# enter username and password
