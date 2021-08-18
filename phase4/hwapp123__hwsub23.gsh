# stub
pipes 2
fork
# input from /dev/fd/3 (pipe[0].read -> fd 3)
push 0
push 1
dup 3
# output to /dev/fd/4 (pipe[1].write -> fd 4)
push 1
push 0
dup 4
exec echo hello from gsh file, pt
krof
