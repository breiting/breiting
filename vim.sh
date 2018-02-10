#!/bin/sh

# Install VIM base system
# Call this script in order to install the VIM plugin system
# Then start VIM and call `:PlugInstall`
# Stop VIM and install YouCompleteMe according to https://github.com/Valloric/YouCompleteMe
# ./install.py --clang-completer --js-completer

mkdir roles/dotfiles/files/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git roles/dotfiles/files/.vim/bundle/Vundle.vim
