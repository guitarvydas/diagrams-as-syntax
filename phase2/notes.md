rect inside rect:
rect(R2,_),
rect(R1,_),
R2.bb completely inside R1.bb
AND no rect inside R2 (rect ...


looking at containment.drawio:
C is inside B
C is inside A
B is inside A

Rectangle A
Rectangle B
Rectangle C
If:
       C is inside A
  and  C is inside B
then
       if B is inside A then
  		   assert C is inside B
       else
	       assert C is inside A
	   end if
end if


Design Rule
  Rectangle A
  Rectangle B
  if (any bb edge of B) intersects (and bb edge of A)
  then design rule fail "rectangles must not intersect"
  end if
end Design Rule
  
