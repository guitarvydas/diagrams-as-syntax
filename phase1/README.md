load daswb.html into a browser
click "generate" 

("generate" button is at the very bottom - scroll down)

- details:
- ../hello.drawio edited with app.diagrams.net (drawio)
- ../hello.drawio pasted into textarea "encodedsource" of daswb.html
- click generate
- copy PROLOG (swipl) code from textarea "plsorted" into file out.pl
- all other textareas in daswb.html are informational - they show the process in action
- ../../scnwb contains common JS code

- Note that this diagram-to-PROLOG transpiler does not handle all of the cases of containment, it only handles the containment given by diagrams.net, i.e. cells contained in drawings ; diagrams.net treats ALL cells as being flat and contained in a diagram, for example ellipses appear on the diagram as being "contained" in rectangles[^1] but diagrams.net shows them only being contained in the diagram, and "flat" otherwise. We will use PROLOG to detect further kinds of containment, instead of hacking this kind of information from diagrams.net code. 

[^1]: in fact, ellipses intersect the boundaries of rectangles - such ellipses are considered to be "contained" by our diagram conventions.
