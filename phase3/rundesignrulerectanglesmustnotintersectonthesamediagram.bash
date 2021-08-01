#!/bin/bash
swipl -g 'consult(fb).' \
      -g 'consult(onSameDiagram).' \
      -g 'consult(designRuleRectanglesMustNotIntersect).' \
      -g 'designRuleRectanglesMustNotIntersectOnTheSameDiagram.' \
      -g 'halt.' \
      > _errors.txt
cat _errors.txt
if grep -q 'FATAL' _errors.txt
then
    echo quitting
    exit 1
fi

rm _errors.txt
