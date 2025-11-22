/*
 * Solution to OSTEP Chapter 5, Problem 5.
 *
 * wait() system call returns child process pid. If wait() is called from a
 * child process, it has no effect on the execution of the program (probably
 * because a child process doesn't have any child processes it could wait for).
 *
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
        pid_t waitRes = wait(NULL);
        printf("hello from parent\n");
    }
}
