# _containment_

## _fb pipeline_
	setup
	allContains1
	printAllDeepContains
	printAllDirectContains
	designRuleRectanglesMustNotIntersectOnTheSameDiagram



## _details_
### setup
	sh cp ../phase2/fb.pl .
### allContains1
	load fb
	load onSameDiagram
	load contain1
    exec allContains1
### printAllDeepContains
	load fb
	load onSameDiagram
	load contain2
    exec printAllDeepContains
### printAllDirectContains
	load fb
	load onSameDiagram
	load contain3
    exec printAllDirectContains
### designRuleRectanglesMustNotIntersectOnTheSameDiagram
	load fb
	load onSameDiagram
	load designRuleRectanglesMustNotIntersect
    check designRuleRectanglesMustNotIntersectOnTheSameDiagram
