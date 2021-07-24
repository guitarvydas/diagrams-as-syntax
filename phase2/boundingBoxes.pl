% create bounding box (Left, Top, Right, Bottom rectangle) for every vertex cell

makebb(CellID):-
    vertex(CellID,_),
    x(CellID,X),
    y(CellID,Y),
    width(CellID,Width),
    height(CellID,Height),
    format("bbl(~w,~w).~n",[CellID,X]),
    format("bbt(~w,~w).~n",[CellID,Y]),
    R is X + Width,
    format("bbr(~w,~w).~n",[CellID,R]),
    Bottom is Y + Height,
    format("bbb(~w,~w).~n",[CellID,Bottom]).

printBB:-
    bagof(C,makebb(C),_).
