*1* Run `process-run.py` with the following flags: `-l 5:100, 5:100`. What should the CPU utilization be (e.g., the percent of time the CPU is in use?). Why do you know this? Use the `-c` and `-p` flags to see if you were right.

_since for both processes we passed to the script, the CPU-bound ticks percentage was 100, the CPU utilization should be 100% as well._

*2* Now run with these flags: `./process-run.py -l 4:100,1:0`. These flags specify one process with 4 instructions (all to use the CPU), and one that simply issues an I/O and waits for it to be done. How long does it take to complete both processes? Use `-c` and `-p` to find out if you were right.

_assuming processes are run in the same order in which they are passed to the script, the first process will run its four instruction on the CPU uninterruptibly. after the first process is done, the second one issues the I/O, and, after waiting for the default_ `IO_LENGTH` _of 5, it terminates as well. 4 ticks to complete the first process, 7 (1 for initiating I/O, 1 for terminating it, and 5 for waiting for it to complete) to complete the second, sums up to 11 ticks to run both processes._

*3* Switch the order of the processes: `./process-run.py -l 1:0,4:100`. What happens now? Does switching the order matter? Why? (As always, use `-c` and `-p` to see if you were right)

_after reviewing the code of_ `process-run.py` _file, one can see that order matters because_ `scheduler` _class loads processes in the direct order in which arguments are passed to it. with that figured out, it is expected that now the I/O-issuing process runs first, taking 1 tick for initializing the I/O, and for the next 5 (default_ `IO_LENGTH`_) ticks it waits for the I/O to finish, it is set aside by the scheduler making room for the second process to run its 4 instructions on the CPU. this results in CPU time needed to run both processes going down to 7 ticks._

*4* We'll now explore some of the other flags. One important is `-S`, which determines how the system reacts when a process issues an I/O. With the flag set to `SWITCH_ON_THE_END`, the system will NOT switch to another process while one is doing I/O, instead wating until the process is completely finished. What happens when you run the following two processes (`-l 1:0,4:100 -c -S SWITCH_ON_END`), one doing I/O, and the other doing CPU work?

_unlike what we've seen in the previous problem, in this case, the scheduler will wait for the first I/O-issuing process to terminate before giving control to the second one. this results in 7 + 4 = 11 ticks being required for both of the processes to terminate._
