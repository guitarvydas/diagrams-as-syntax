#name hwapp123
pipes 4

fork

#fork
#push 1  write end of pipe
#push 0  0'th pipe in above array of pipes (0,1,2,3)
#dup 1   overwrite stdout with pipe[0].writeEnd
#exec1st scan  become "scan" with pipes set up per dup
#krof 

