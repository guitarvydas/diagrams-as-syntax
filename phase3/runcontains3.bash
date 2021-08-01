#!/bin/bash
swipl \
    -g 'consult(fb).' \
    -g 'consult(onSameDiagram).' \
    -g 'consult(contain3).' \
    -g 'printAllDirectContains.' \
    -g 'halt.'

