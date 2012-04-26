#!/usr/bin/env bash

# remove a submodule
# ref: http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule
#
# To remove a submodule you need to:
#
# 1.  Delete the relevant line from the .gitmodules file.
#       git config -f .gitmodules --remove-section submodule.$submodulepath
#       (Please note: $submodulepath doesn't contain leading or trailing slashes.)
#
# 2.  Delete the relevant section from .git/config.
#       git config -f .git/config --remove-section submodule.$submodulepath
#       (Please note: $submodulepath doesn't contain leading or trailing slashes.)
#
# 3.  Run git rm --cached path_to_submodule (no trailing slash).
#       git rm --cached $submodulepath
#
# 4.  Commit and delete the now untracked submodule files.
#
# When you do git submodule add, it only adds it to .gitmodules, but once you did git submodule 
#   init it has been added to .git/config too.
# 
# It is a good idea to do git git rebase HEAD first and git commit at the end, if you put this in a script.  
#   If there are rebase conflicts, resolve them as with normal merge conflicts, then 'git add -a', 
#   then 'git rebase --continue' to finish the rebase.  (http://book.git-scm.com/4_rebasing.html)

argv=$@
echo "argv = ${argv}'"

echo "Rebasing HEAD"
git rebase HEAD
echo "Executing 'git rm --cached $1'"
git rm -r --cached $1
echo "Executing 'git config -f .gitmodules --remove-section submodule.$1'"
git config -f .gitmodules --remove-section submodule.$1
echo "Executing 'git config -f .git/config --remove-section submodule.$1'"
git config -f .git/config --remove-section submodule.$1
echo "Adding and Committing..."
git add -a
git commit -m "removed submodule $1"
echo "Done"
