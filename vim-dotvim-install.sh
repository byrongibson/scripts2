#!/usr/bin/env bash

# install or update Vundle .vim to ~/.vim/autoload
# https://github.com/repos-vim/dot_vim
# https://github.com/repos-vim/vundle
#
# Synchronize vim installations using Pathogen and Git Submodules (can be modded to Vundle)
# http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

if [ -d ~/.vim ]
then
	echo "~/.vim already exists.  This script will overwrite it.  Please backup and rename, then rerun script."
	echo "Aborting ... "
else
	cd
	git clone git@github.com:repos-vim/dot_vim.git
	mv dot_vim .vim
	cd .vim
	rake vim:link
	git clone git@github.com:repos-vim/vundle.git

	# start with:
	# Launch vim, run :BundleInstall or 
	#vim +BundleInstall +qall
fi
