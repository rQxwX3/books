/*
 * Solution to OSTEP Chapter 5, Problem 6.
 *
 * This code is identical to the solution of the previous problem with one minor
 * change of using waitpid() instead of wait(). The former function proves to be
 * useful when a process has more than one child, and needs to wait for the
 * termination of a particular one.
 */

#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void) {
    pid_t rc = fork();

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        // pid_t waitFromChildRes = wait(NULL);
        printf("hello from child\n");
    } else {
        pid_t waitRes = waitpid(rc, NULL, 0);
        printf("hello from parent\n");
    }
}
