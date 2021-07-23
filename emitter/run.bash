#!/bin/bash
swipl -q \
      -g 'consult("../phase2/fb.pl")' \
      -g 'consult(emitxml)' \
      -g 'emitxml.' \
      -g 'halt' \
      > test.xml
