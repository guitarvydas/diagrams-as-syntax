#!/bin/bash
swipl -g 'consult("../phase1/out.pl").' \
      -g 'consult(boundingBoxes).' \
      -g 'printBB.' \
      -g 'halt.'

