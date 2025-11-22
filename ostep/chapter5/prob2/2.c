/*
 * Solution to OSTEP Chapter 5, Problem 2.
 *
 * Both child and parent processes are capable of writing to the file. The order
 * in which those writes are done is not deterministic, and depends on the
 * scheduler. That means that from one execution of the program to the other,
 * the order in which "hello" messages appear in the file may vary. System call
 * wait() can be used to make the order deterministic.
 *
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void writeToFile(int fd, const char *message) {
    ssize_t res = write(fd, message, strlen(message));
    if (res < 0) {
        fprintf(stderr, "write failed\n");
        exit(1);
    }
}

int main(void) {
    int fd = open("./file.txt", O_CREAT | O_WRONLY | O_TRUNC);

    pid_t rc = fork();

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        writeToFile(fd, "hello from child\n");
    } else {
        writeToFile(fd, "hello from parent\n");
    }
}
