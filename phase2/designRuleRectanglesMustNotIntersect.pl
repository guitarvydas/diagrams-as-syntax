designRuleRectanglesMustNotIntersect(A,B):-
    % simplify by checking bounding boxes only
    rect(A,_),
    rect(B,_),
    bbl(A,Al),
    bbt(A,At),
    bbr(A,Ar),
    %bbb(A,Ab),
    bbl(B,Bl),
    bbt(B,Bt),
    %bbr(B,Br),
    bbb(B,Bb),
    linesIntersect(Al, At, Ar, At, Bl, Bt, Bl, Bb),
    format('design rule: rectangles must not intersect (Atop Bleft) ~w ~w~n', [A,B]),
    !.

designRuleRectanglesMustNotIntersect(A,B):-
    % simplify by checking bounding boxes only
    rect(A,_),
    rect(B,_),
    bbl(A,Al),
    bbt(A,At),
    bbr(A,Ar),
    %bbb(A,Ab),
    %bbl(B,Bl),
    bbt(B,Bt),
    bbr(B,Br),
    bbb(B,Bb),
    linesIntersect(Al, At, Ar, At, Br, Bt, Br, Bb),
    format('design rule: rectangles must not intersect (Atop Bright) ~w ~w~n', [A,B]),
    !.


designRuleRectanglesMustNotIntersect(A,B):-
    % simplify by checking bounding boxes only
    rect(A,_),
    rect(B,_),
    bbl(A,Al),
    %bbt(A,At),
    bbr(A,Ar),
    bbb(A,Ab),
    bbl(B,Bl),
    bbt(B,Bt),
    %bbr(B,Br),
    bbb(B,Bb),
    linesIntersect(Al, Ab, Ar, Ab, Bl, Bt, Bl, Bb),
    format('design rule: rectangles must not intersect (Abottom Bleft) ~w ~w~n', [A,B]),
    !.

designRuleRectanglesMustNotIntersect(A,B):-
    % simplify by checking bounding boxes only
    rect(A,_),
    rect(B,_),
    bbl(A,Al),
    %bbt(A,At),
    bbr(A,Ar),
    bbb(A,Ab),
    %bbl(B,Bl),
    bbt(B,Bt),
    bbr(B,Br),
    bbb(B,Bb),
    linesIntersect(Al, Ab, Ar, Ab, Br, Bt, Br, Bb),
    format('design rule: rectangles must not intersect (Abottom Bright) ~w ~w~n', [A,B]),
    !.

designRuleRectanglesMustNotIntersect(_,_).


linesIntersect(Xa1, Ya1, Xa2, Ya2, Xb1, Yb1, Xb2, Yb2):-
    linesIntersectAisVertical(Xa1, Ya1, Xa2, Ya2, Xb1, Yb1, Xb2, Yb2).
linesIntersect(Xa1, Ya1, Xa2, Ya2, Xb1, Yb1, Xb2, Yb2):-
    linesIntersectAisVertical(Xb1, Yb1, Xb2, Yb2, Xa1, Ya1, Xa2, Ya2).

linesIntersectAisVertical(Xa1, Ya1, Xa1, Ya2, Xb1, Yb1, Xb2, Yb1):-
    % perpendicular lines only
    % A is vertical (hence, B is horizonal)
    Yb1 >= Ya1,
    Yb1 =< Ya2,
    Xb1 =< Xa1,
    Xb2 >= Xa1.
