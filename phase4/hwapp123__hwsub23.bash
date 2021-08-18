#!/bin/bash
# hwapp123__hwsub23
# inputs: 3 ("A"): <line of characters>
# outputs: 4 ("B"): <line of characters>
BIN=.
A=/dev/fd/3
B=/dev/fd/4
grash hwsub23__hwhello.gsh 3<${A} 4>${B} &
