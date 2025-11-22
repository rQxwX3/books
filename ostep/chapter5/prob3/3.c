/*
 * Solution to OSTEP Chapter 5, Problem 3.
 *
 * This code ensures that child process prints to stdio before its parent
 * without using wait() system call. It is done using global state (a file).
 * Once the file is changed by the child process, parent process proceeds to
 * printing to stdio.
 *
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>

void writeToFile(int fd, const char *message) {
    ssize_t res = write(fd, message, strlen(message));
    if (res < 0) {
        fprintf(stderr, "write failed\n");
        exit(1);
    }
}

int main(void) {
    pid_t rc = fork();

    int fd = open("./file.txt", O_CREAT | O_RDWR | O_TRUNC);
    const char *messageOnWrite = "1";

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        printf("hello\n");
        writeToFile(fd, messageOnWrite);
    } else {
        char buf = '0';

        while (buf != messageOnWrite[0]) {
            read(fd, &buf, 1);
        }

        printf("goodbye\n");
    }
}
