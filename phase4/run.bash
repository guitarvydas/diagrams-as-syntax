#!/bin/bash
clear
echo '*** in run.bash ***'
pipeOut=pipe_$RANDOM
mkfifo  ${pipeOut}
pipeIn=pipe_$RANDOM
mkfifo  ${pipeIn}

# ./hwapp123.bash 3<${pipeIn} 4>${pipeOut} &
grash hwapp123.gsh 3<${pipeIn} 4>${pipeOut} &

echo '<test>' >${pipeIn} &
cat <${pipeOut}

rm ${pipeOut} ${pipeIn}
