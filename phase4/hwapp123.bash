#!/bin/bash
echo '*** in hwapp123.bash'
# hwapp123
# inputs: 3 ("in"): <line of characters>
# outputs: 4 ("out"): <line of characters>
BIN=.
port_in=/dev/fd/3
port_out=/dev/fd/4
grash hwapp123__hwsub23.gsh 3<${port_in} 4>${port_out} &

