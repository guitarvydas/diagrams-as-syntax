#!/bin/bash
cp ../phase1/out.pl fb.pl
./rects.bash >>fb.pl
# N.B. PROLOG requires that facts of the same name be adjacent.  UNIX 'sort'
#  is a good way to ensure this.
#  In this case, rects.bash print out only "rect(...)" facts and they will be
#  contiguous, so, it is enough to simply append them to fb.pl.

