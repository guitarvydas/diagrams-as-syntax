% rectangles can contain edges
allContains1:-
    bagof(R,(rect(R,_),ellipse(E,_),onSameDiagram(R,E),printContainment(R,E)),_).

