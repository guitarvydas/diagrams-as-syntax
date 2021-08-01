#!/bin/bash
clear
set -e
trap 'catch' ERR

catch () {
    echo '*** fatal error in run.bash'
    exit 1
}

cp ../phase1/out.pl fb.pl

#######

# drawing agnostic operations

./rects.bash | ./augment-fb

./bb.bash | ./augment-fb


#######
