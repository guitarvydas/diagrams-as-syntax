% create bounding box (Left, Top, Right, Bottom rectangle) for every vertex cell

makebb(CellID):-
    vertex(CellID,_),
    x(CellID,X),
    y(CellID,Y),
    width(CellID,Width),
    height(CellID,Height),
    format("l(~w,~w).~n",[CellID,X]),
    format("t(~w,~w).~n",[CellID,Y]),
    R is X + Width,
    format("r(~w,~w).~n",[CellID,R]),
    Bottom is Y + Height,
    format("b(~w,~w).~n",[CellID,Bottom]).

printBB:-
    bagof(C,makebb(C),_).
