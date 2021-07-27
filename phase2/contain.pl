contains(d,e).
contains(e,f).
contains(d,f).
contains(d,g).
contains(d,h).
contains(g,h).

inside(Inner,Outer):-
    contains(Outer,Inner).

%%%%%%%%%%

w(d,430).
h(d,170).
x(d,40).
y(d,360).

x(e,60).
y(e,390).
w(e,170).
h(e,110).

x(f,85).
y(f420).
w(f,120).
h(f,60).

x(g,280).
y(g,380).
w(g,170).
h(g,110).

x(h,305).
y(h,420).
w(h,120).
h(h,60).
