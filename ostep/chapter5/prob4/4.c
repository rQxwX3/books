/*
 * Solution to OSTEP Chapter 5, Problem 4.
 *
 * This code demonstrates usage of exec() system calls family. Note that only
 * calls described in macOS man pages are used. The only sensible assumption I
 * have about clear proficit in variety of this system call flavours is historic
 * reasons. This kind of functionality must have been heavily used by every
 * organization using UNIX operating system, and some of those organizations
 * might have had their own view of how it should have been implemented
 * initially. Thus, so many versions.
 *
 * Only one of the lines containing exec() system call should be uncommented
 * when running the program.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void) {
    pid_t rc = fork();

    if (rc < 0) {
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (0 == rc) {
        int res;

        char *path = "/bin/ls";
        char *args[] = {"ls"};
        char *execVArgs[] = {strdup(path), NULL};

        res = execl(path, args[0], NULL);
        // res = execle(path, args[0], NULL);
        // res = execlp(path, args[0], NULL);
        // res = execv(execVArgs[0], execVArgs);
        // res = execvp(args[0], execVArgs);
        // res = execvP(args[0], "/bin/", execVArgs);

        if (res < 0) {
            fprintf(stderr, "exec failed\n");
            exit(1);
        }
    }
}
