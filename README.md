convert diagrams to code in a series of steps (aka "phases")

in this case, we use a VERY simple example - hello.drawio which contains 3 diagrams

hwapp - top level app which contains a "hole" called "inner" of type "\_nonamekind"
hwsup - sub-level of app which contains a "hole" called "hole" of type "\_nonamekind"
hwhello - sub-sub-level of app which is a leaf node containing synchronous code "hello" (sync code is denoted by red fill color)

use swipl to combine the 3 diagrams into a single diagram (The App).

see phase1/README.md
see phase2/README.md
