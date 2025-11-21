/*
 * Solution to OSTEP Chapter 5, Problem 1.
 *
 * In the current setup, the value of x in the child process is unchanged
 * compared to the initial one. If it was changed in that process, the value
 * would change in that process, and that process only. That is because starting
 * from fork() system call, there are two independent processes with separate
 * address spaces, and, consequently, different variables (though they might
 * have the same name).
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
    int x = -1;
    pid_t rc = fork();

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        printf("i am a child (pid: %d), x is %d\n", (int)getpid(), x);
    } else {
        x = 1;
        printf("i am a parent of %d, (pid: %d), x is %d\n", rc, (int)getpid(),
               x);
    }
}
