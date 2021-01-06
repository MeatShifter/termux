#!/usr/bin/env sh
echo='***************************************&'
echo='*----- MagicPuddle Termux Config ------*'
echo='*----- Ver. 1.0.0 By: MeatShifter -----*'
echo='****************************************'
# storage setup
termux-setup-storage

# Upgrade PKG's
echo = 'Installing Packages initial pkgs and setting up sshd ftp etc.'
pkg upgrade
pkg add busybox rsync coreutils cmake termux-api termux-services termux-exec termux-tools unstable-repo x11-repo  grep tree ncurses-utils openssh gpg proot curl wget vim tmux git coreutils

echo = 'Termux services'
source $PREFIX/etc/profile.d/start-services.sh
sv-enable ftpd
sv up ftpd
echo = 'Creating Key'
ssh-keygen -t ecdsa256 -f tye-fighter_ecdsa256
sshd
ssh-copy-id -p 8022 -i tye-fighter_ecdsa256 # add ip here

echo = 'Installing LNMP Stack'
pkg add nginx mariadb php-fpm php

echo = 'Install Languages'
python  nodejs ruby golang

echo = 'configs from GitHub'
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime && sh ~/.vim_runtime/install_awesome_vimrc.sh
