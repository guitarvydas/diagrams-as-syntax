convert diagrams to code in a series of steps (aka "phases")

in this case, we use a VERY simple example - hello.drawio which contains 3 diagrams

hwapp - top level app which contains a "hole" called "inner" of type "\_nonamekind"
hwsup - sub-level of app which contains a "hole" called "hole" of type "\_nonamekind"
hwhello - sub-sub-level of app which is a leaf node containing synchronous code "hello" (sync code is denoted by red fill color)

use swipl to combine the 3 diagrams into a single diagram (The App).

see phase1/README.md
see phase2/README.md

facts produced by phase 1:
```
cell(id,"").
contains(id1,id2).
diagram(diagramid,"").
edge(id,"").
ellipse(id,"").
fillColor(id,"red").
height(id,nn).
name(diagramid,"string").
source(edgeid1,id2).
target(edgeid1,id2).
text(id,"").
value(textid,"string").
vertex(id,"").
width(id,nn).
x(id,nn).
y(id,nn).
```
