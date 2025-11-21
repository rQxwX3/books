*1* Run `process-run.py` with the following flags: `-l 5:100, 5:100`. What should the CPU utilization be (e.g., the percent of time the CPU is in use?). Why do you know this? Use the `-c` and `-p` flags to see if you were right.

_since for both processes we passed to the script, the CPU-bound ticks percentage was 100, the CPU utilization should be 100% as well._

*2* Now run with these flags: `./process-run.py -l 4:100, 1:0`. These flags specify one process with 4 instructions (all to use the CPU), and one that simply issues an I/O and waits for it to be done. How long does it take to complete both processes? Use `-c` and `-p` to find out if you were right.

_assuming processes are run in the same order in which they are passed to the script, the first process will run its four instruction on the CPU uninterruptibly. after the first process is done, the second one issues the IO, and, after waiting for the default_ `IO_LENGTH` _of 5, it terminates as well. 4 ticks to complete the first process, 7 (1 for initiating IO, 1 for terminating it, and 5 for waiting for it to complete) to complete the second, sums up to 11 ticks to run both processes._

*3* Switch the order of the processes: `./process-run.py -l 1:0, 4:100`. What happens now? Does switching the order matter? Why? (As always, use `-c` and `-p` to see if you were right)

_after reviewing the code of_ `process-run.py` _file, one can see that order matters because_ `scheduler` _class loads processes in the direct order in which arguments are passed to it. with that figured out, it is expected that now the IO-issuing process runs first, taking 1 tick for initializing the IO, and for the next 5 (default_ `IO_LENGTH`_) ticks it waits for the IO to finish, it is set aside by the scheduler making room for the second process to run its 4 instructions on the CPU. this results in CPU time needed to run both processes going down to 7 ticks._
