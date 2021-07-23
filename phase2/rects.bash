#!/bin/bash
swipl -q \
      -g 'consult("../phase1/out.pl")' \
      -g 'consult(rects)' \
      -g 'printRects.' \
      -g 'halt'
