#!/bin/bash
swipl \
    -g 'consult(fb).' \
    -g 'consult(onSameDiagram).' \
    -g 'consult(contain2).' \
    -g 'printAllDeepContains.' \
    -g 'halt.'

