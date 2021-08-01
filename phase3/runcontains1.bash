#!/bin/bash
swipl \
    -g 'consult(fb).' \
    -g 'consult(onSameDiagram).' \
    -g 'consult(contain1).' \
    -g 'allContains1.' \
    -g 'halt.'

