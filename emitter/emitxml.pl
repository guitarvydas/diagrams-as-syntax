emitDiagram(D):-
    diagram(D,_),
    name(D,Name),
    emitDiagramAsXML(D,Name).

emitDiagramAsXML(D,Name):-
    format("<diagram>~n",[]),
    format("<id>~w</id>~n",[D]),
    format("<name>~w</name>~n",[Name]),
    bagof(C,emitCell(D,C),_),
    format("</diagram>~n",[]).

emitxml:-
    format("<diagrams>~n"),
    bagof(D,emitDiagram(D),_),
    format("</diagrams>~n").


emitCell(DiagramID,CellID):-
    emitRect(DiagramID,CellID).
emitCell(DiagramID,CellID):-
    emitEllipse(DiagramID,CellID).
emitCell(DiagramID,TextID):-
    emitText(DiagramID,TextID).
emitCell(DiagramID,EdgeID):-
    emitEdge(DiagramID,EdgeID).

emitRect(Container,RectID):-
    contains(Container,RectID),
    rect(RectID,_),
    format("<rect>~n",[]),
    format("<id>~w</id>~n",[RectID]),
    format("</rect>~n",[]).
emitEllipse(Container,EllipseID):-
    contains(Container,EllipseID),
    ellipse(EllipseID,_),
    format("<ellipse>~n",[]),
    format("<id>~w</id>~n",[EllipseID]),
    format("</ellipse>~n",[]).
emitText(Container,TextID):-
    contains(Container,TextID),
    ellipse(TextID,_),
    format("<ellipse>~n",[]),
    format("<id>~w</id>~n",[TextID]),
    format("</ellipse>~n",[]).
emitEdge(Container,EdgeID):-
    contains(Container,EdgeID),
    ellipse(EdgeID,_),
    format("<edge>~n",[]),
    format("<id>~w</id>~n",[EdgeID]),
    format("</edge>~n",[]).
