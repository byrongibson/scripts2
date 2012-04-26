#!/usr/bin/env bash

# delete all instances of a file in the entire git repo.  Used to redact sensitive accidental commits.
# specify filename to delete as cmdline param
# ref:  http://help.github.com/remove-sensitive-data/
#       http://www.azhowto.com/2011/09/22/removing-sensitive-data-from-git/

argv=$@
echo "${argv}"
#git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch "${argv}"'
#git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch ${argv}' --tag-name-filter 'cat' HEAD --all
#git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch .gitconfig'
#git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch install-server.sh'
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch archive\ 3'

# after above, run:
# git add -all
# git commit -m 'update'
# git push origin master --force

# clean local objects
# rm -rf .git/refs/original
# git reflog expire --expire=now --all
# git gc --prune=now
# git gc --aggressive --prune=now

# collaborators will need to fetch and rebase the new origin/master

# force-pushing does not actually erase commits on the remote repo, it just
# adds new ones and moves the branch pointer to point at them.  Users can
# can still access the orphaned commits directly with SHA1.  Only way to 
# remove this possibility is to delete and recreate the repo.  Even then, old
# pages may be cached.  If you recreate the repo and find cached pages with 
# sensitive info, open a ticket on Github Support and provide links to the staff
# can purge them from the cache.

# finally, don't forget to add the filename of the sensitive file to .gitignore/
# .gitignore_global.
