*1.2-1* Give an example of an application that requires algorithmic content at the application level, and discuss the function of the algorithms involved.

_searching for a video and watching it on a videohosting website such as YouTube requires solving several application-level algorithmic problems. the backend of the website must have some implementation of the search algorithm, and a video-rendering solution to name a few._

*1.2-2* Suppose that for inputs of size $n$ on a particular computer, insertion sort runs in $8n^2$ steps, and merge sort runs in $64n lg n$ steps. For which values of $n$ does insertion sort beat merge sort?

$ 8n^2 < 64n lg n $
$ n / (lg n) < 8 $

_the above inequality turns into equality at $n = 44$. for any $n < 44$, insertion sort beats merge sort._

*1.2-3* What is the smallest value of $n$ such that an algorithm whose running time is $100 n^2$ runs faster than an algorithm whose running time is $2^n$ on the same machine?

$ (n = 15): 100 * 15^2 = 22500 < 2 ^ 15 = 32768 $

$ (n = 14): 100 * 14^2 = 19600 > 2 ^ 14 = 16384 $

_$n = 15$ is the smallest input size for which first algorithm runs faster than the second._
