/*
 * Solution to OSTEP Chapter 5, Problem 8.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
    int rc1 = fork();

    int fdes[2];

    if (rc1 < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc1) {
        fdes[0] = STDOUT_FILENO;
    } else {
        int rc2 = fork();

        if (rc2 < 0) {
            fprintf(stderr, "fork failed\n");
            exit(1);
        } else if (0 == rc2) {
            fdes[1] = STDIN_FILENO;
        } else {
            pipe(fdes);
        }
    }
}
