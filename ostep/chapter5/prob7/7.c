/*
 * Solution to OSTEP Chapter 5, Problem 7.
 *
 * After the stdout stream is closed for the child process, any of its attempts
 * to write to it are unsuccessful. As child and parent processes are
 * independent (have different PCBs), stdout file descriptor of the parent
 * proceess was not affected by its child, and parent can freely write to it.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
    pid_t rc = fork();

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        if ((close(STDOUT_FILENO)) < 0) {
            fprintf(stderr, "close failed\n");
            exit(1);
        }

        printf("hello from child\n");
    } else {
        printf("hello from parent\n");
    }
}
