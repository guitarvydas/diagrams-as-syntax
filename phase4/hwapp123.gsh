#name hwapp123
pipes 4

fork
krof

fork
krof

fork
# /dev/fd/4 for output
push 1
push 2
dup 4
# /dev/fd/3 for input
push 0
push 2
dup 4
krof


#fork
#push 1  write end of pipe
#push 0  0'th pipe in above array of pipes (0,1,2,3)
#dup 1   overwrite stdout with pipe[0].writeEnd
#exec1st scan  become "scan" with pipes set up per dup
#krof 

