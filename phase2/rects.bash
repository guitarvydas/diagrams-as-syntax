#!/bin/bash
swipl -q \
      -g 'consult(fb)' \
      -g 'consult(rects)' \
      -g 'printRects.' \
      -g 'halt'
