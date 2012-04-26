#!/usr/bin/env bash

# install or update Pathogen.vim to ~/.vim/autoload
# http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
#
# Synchronize vim installations using Pathogen and Git Submodules
# http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

if [ ! -d ~/.vim/autoload ]; then mkdir -p ~/.vim/autoload; fi

wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O ~/.vim/autoload/pathogen.vim
