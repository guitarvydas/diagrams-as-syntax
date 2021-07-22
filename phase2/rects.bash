#!/bin/bash
swipl -q \
      -g 'consult(out)' \
      -g 'consult(rects)' \
      -g 'printRects.' \
      -g 'halt'
