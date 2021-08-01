convert diagrams to code in a series of steps (aka "phases")

in this case, we use a VERY simple example - hello.drawio which contains 3 diagrams

hwapp - top level app which contains a "hole" called "inner" of type "\_nonamekind"
hwsup - sub-level of app which contains a "hole" called "hole" of type "\_nonamekind"
hwhello - sub-sub-level of app which is a leaf node containing synchronous code "hello" (sync code is denoted by red fill color)

use swipl to combine the 3 diagrams into a single diagram (The App).

Herein is a fully worked hello world example.


---

The primer for DaSWB and for basic inferencing is in ../diagram parsing.

See also:

Diagram Parsing

The first step is to convert a .drawio file to a factbase.

The second step is to infer various properties from the factbase (this step infers only some properties, not all - that's for later).

1. Step 1 is done using the DaS WB (Diagrams as Syntax Work Bench).

see:

[overview](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-Overview.html)

[phase 1 Decompress](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-1-Decoding-Phase.html)

[phase 2 Style Expander](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-2-Style-Expander-Phase.html)

[phase 3 Attribute Elider](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-3-Attribute-Elider-Phase.html)

[phase 4 Name Collector](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-4-Factbase-Name-Collector.html)

[phase 5 Code Emitter](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-5-Factbase-Emitter.html)

[phase 6 Sort](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-DaS-Workbench-6-Sort.html)

2. Step 2 - Inferencing

see:

[Bounding Boxes](https://guitarvydas.github.io/2021/07/25/Parsing-Diagrams-Bounding-Boxes.html)

[Containment](https://guitarvydas.github.io/2021/07/27/Parsing-Diagrams-Containment.html)

[Ports](https://guitarvydas.github.io/2021/07/29/Parsing-Diagrams-Ports.html)

[Connections](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-Connections.html)

[Design Rules](https://guitarvydas.github.io/2021/07/30/Parsing-Diagrams-Design-Rules.html)

