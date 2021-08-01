#!/bin/bash
clear
set -e
trap 'catch' ERR

catch () {
    echo '*** fatal error in run.bash'
    exit 1
}

cp ../phase2/fb.pl fb.pl

#######

# drawing specific operations

./rundesignrulerectanglesmustnotintersectonthesamediagram.bash

# contains on same drawing
./runcontains1.bash | ./augment-fb.bash
./rundeepcontains.bash | ./augment-fb.bash
./runcontains3.bash | ./augment-fb.bash

# ports on same drawing
# connections on same drawing

#######
