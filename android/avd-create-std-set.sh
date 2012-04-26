#!/usr/bin/env

android create avd \-n $1-2.1 \-t 1 \--force
android create avd \-n $1-2.1-google-api \-t 2 \--force
android create avd \-n $1-2.2 \-t 3 \--force
android create avd \-n $1-2.2-google-api \-t 4 \--force
android create avd \-n $1-2.3 \-t 8 \--force
android create avd \-n $1-2.3-google-api \-t 9 \--force
android create avd \-n $1-4.0 \-t 12 \--force
android create avd \-n $1-4.0-google-api \-t 13 \--force

#android create avd \-n $1-2.1 \-t 1 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-2.1-google-api \-t 2 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-2.2 \-t 3 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-2.2-google-api \-t 4 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-2.3 \-t 8 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-2.3-google-api \-t 9 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-4.0 \-t 12 \-p $HOME/bin/Google/Android/sdk/avd/ \--force
#android create avd \-n $1-4.0-google-api \-t 13 \-p $HOME/bin/Google/Android/sdk/avd/ \--force


