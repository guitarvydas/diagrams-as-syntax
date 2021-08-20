component(Diagram,C,Ins,Outs,Children,Connections) :-
    diagramContains(Diagram,C),
    rect(C,_),
    value(C,_),
    bagof(I,inputof(C,I),Ins),
    bagof(O,inputof(C,O),Outs),
    bagof(Child,childof(C,Child),Children),
    bagof(Conn,connectionOf(C,Conn),Connections).

toplevelComponent(Diagram,C):-
    diagramContains(Diagram,C),
    rect(C,_),
    value(C,_),
    \+ contains(_,C).

alltoplevelComponentsOnDiagram(Diagram,Bag):-
    setof(C,toplevelComponent(Diagram,C),Bag).

allchildrenComponents(C,Bag):-
    setof(Child,contains(C,Child),Bag).

inputof(C,I):-
    ellipse(I,_),
    contains(C,I),
    fillColor(I,"green").

outputof(C,I):-
    ellipse(I,_),
    contains(C,I),
    fillColor(I,"yellow").

childof(C,Child):-
    contains(C,Child),
    rect(Child,_).
childof(_,_).

