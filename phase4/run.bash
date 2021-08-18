#!/bin/bash
pipeOut=pipe_$RANDOM
mkfifo  ${pipeOut}
pipeIn=pipe_$RANDOM
mkfifo  ${pipeIn}

#./hwapp123 3<${pipeIn} 4>${pipeOut} &
./hwapp123.bash 3<${pipeIn} 4>${pipeOut} &

echo '<test>' >${pipeIn} &
cat <${pipeOut}

rm ${pipeOut} ${pipeIn}
