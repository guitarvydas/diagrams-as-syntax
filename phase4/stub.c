#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <sys/wait.h>

int main (int argc, char **argv) {
  dup2 (4,1); /* stdout <-- fd4 */
  printf ("hello from C\n");
}
