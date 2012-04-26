#!/usr/bin/env bash

# install or update Vundle to ~/.vim/bundle/vundle
# https://github.com/repos-vim/vundle#readme
#
# Synchronize vim installations using Pathogen and Git Submodules (can be repurposed to Vundle)
# http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

# new installation, create ~/.vim if DNE
if [ ! -d ~/.vim ]; then mkdir -p ~/.vim; fi

# new installation, clone repo if DNE
if [ ! -d ~/.vim/.git ]
then 
    git clone git@github.com:byrongibson/vim.git ~/.vim
    cd ~/.vim
    git submodule update
fi

if [ -d ~/.vim/bundle/vundle ]
then 
    echo "~/.vim/bundle/vundle already exists."
    echo "Updating ..."
    cd ~/.vim
    git submodule foreach git pull origin master
    echo "Updates pulled from origin/master.  Any forks of upstream (repos-vim, repos-scala) \
        may need to be updated from upstream and re-pulled."
        
    # TODO Update vundle from upstream
    #echo "~/.vim/bundle/vundle already exists, updating from Upstream..."
    #cd ~/.vim/bundle/vundle
    #git submodule update
    #cd ~/.vim
else
    cd ~/.vim
    git submodule add -f git@github.com:repos-vim/vundle.git ~/.vim/bundle/vundle
    cd ~/.vim/bundle/vundle
    git remote add upstream git://github.com/gmarik/vundle.git
    cd 
    ln -s ~/.vim/.vimrc .
    cd ~/.vim
fi

# now install vim plugins to ~/.vim/bundle/vundle with 'git submodule add [repo] ~/.vim/bundle/vundle/[repo]
# install vim to fresh *nix by cloning your vim repo, cd to it, then 'git submodule update --init'
