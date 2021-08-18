# inputs: 3 ("in"): <line of characters>
# outputs: 4 ("out"): <line of characters>

fork
# redirect stdout to fd4
push 4
redir 1
# rewrite stdin to be the same as fd3
push 3
redir 0
exec cat -
krof
