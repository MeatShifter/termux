#!/usr/bin/env sh
echo='***************************************&'
echo='*----- MagicPuddle Termux Config ------*'
echo='*----- Ver. 1.0.0 By: MeatShifter -----*'
echo='****************************************'
# Upgrade PKG's
pkg upgrade
echo='Installing Packages'
pkg add unstable-repo x11-repo vim tmux git coreutils termux-api termux-services termux-exec termux-tools grep tree ncurses-utils openssh gpg proot curl wget nginx mariadb python cmake nodejs ruby golang
# storage setup
termux-setup-storage
# configs from GitHub
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime && sh ~/.vim_runtime/install_awesome_vimrc.sh
