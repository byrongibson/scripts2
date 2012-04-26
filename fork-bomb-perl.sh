#!/usr/bin/env bash 

# http://www.reddit.com/r/programming/comments/q1qii/want_to_try_your_hand_at_writing_exploits_try/c3u09kc
# don't run unless you want to hang your system.  test in a vm.

# ugly:
# perl -e 'while(true){ fork(); }' &

# prettified:
perl -e "fork while fork"
