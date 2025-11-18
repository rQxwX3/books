*2.3-1* Using figure 2.4 as a model, illustrate the operation of merge sort on an array initially containing the sequence
$[3, 41, 52, 26, 38, 57, 9, 49]$.

$
[3, 41, 52, 26, 38, 57, 9, 49]
$
$
[3, 41, 52, 26] quad [38, 57, 9, 49]
$
$
[3, 41] quad [52, 26] quad [38, 57] quad 
[9, 49]
$
$
[3] quad [41] quad [52] quad [26] quad [38]
quad [57] quad [9] quad [49]
$
$
[3, 41] quad [26, 52] quad [38, 57] quad [9, 49]
$
$
[3, 26, 41, 52] quad [9, 38, 49, 57]
$
$
[3, 9, 26, 38, 41, 49, 52, 57]
$

*2.3-2* The test in line 1 of the _Merge-Sort_ procedure reads "*if* $p >= r$" rather than "*if* $p != r$". If _Merge-Sort_ is called with $p > r$, then the subarray $A[p : r]$ is empty. Argue that as long as the initial call of _Merge-Sort_$(A, 1, n)$ has $n >= 1$, the test "*if* $p != r$" suffices to ensure that no recursive call has $p > r$.

_*proof by induction:*_

_*base case:* neither of recursive calls made on the first step of the algorithm has $p > r$._

$
q = floor((1 + n) / 2) >= 1
$

_note that $n != 1$, as such input ($A, 1, 1$) would result in immediate `return` from Merge-Sort procedure as it would not pass the test in question ($p != r$)._

#align(center, [_Merge-Sort($A, 1, q$) $quad quad$ Merge-Sort($A, q + 1, n$)_])

_first recursive call will never has $p > r$, as $q >= 1$. second one will never has $p > r$, as $n > 1$._

_*inductive hypothesis:* let us assume that for some recursive call Merge-Sort($A, p_1, r_1$) it is made sure by the test $p != r$ that this call and every preceding call did not have $p > r$ (so $p_1 <= r_1$)._

_*inductive step:* let us now prove that with this assumption neither of the recursive calls made from the recursive call Merge-Sort($A, p_1, r_1$) has $p > r$:_


#align(center, [_Merge-Sort($A, p_1, q_1$) $quad quad$ Merge-Sort($A, q_1 + 1, r_1$)_])

_the lowest value of $q_1 = floor((p_1 + r_1)/2)$ is $p_1$, the highest is $r_1$ ($p_1 <= q_1 <= r_1$). these statements are based on the restriction set in the inductive hypothesis, and guarantee that neither of the calls above will fail to conform with that same restriction, if applied to them._

*2.3-3* State a loop invariant for the *while* loop of lines 12-18 of the Merge procedure. Show how to use it, along with the *while* loop of lines 20-23 and 24-27, to prove that the Merge procedure is correct.

_consider the following invariant for the first_ `while` _loop:_

_subarray _ $A[p : k - 1]$ _is sorted on every iteration of the loop_

_INITIALIZATION: subarray _ $A[p : -1]$ _ contains no elements, thus is sorted._

_MAINTENANCE: all elements are stored in two sorted arrays: _ $L[0 : n_L]$ _and_ $R[0 : n_R]$. _on each iteration of the _ `while` _loop the smallest of the remaining elements of these arrays is inserted into _ #box[$A[0 : n]$]. _The counter variable_ `k` _is updated after the insertion. This guarantees that loop invariant is maintained._

_TERMINATION: right after loop termination, $k = min(n_L, n_R)$. The subarray _$A[p : k - 1]$ _is sorted._

_combining this loop invariant with similar ones for the other two loops, one can see that all elements of the smaller arrays are inserted into _ $A[0 : n],$ _maintaining correct order. one of the latter_ `while` _loops inserts the rest of the elements of the bigger array without changing their position (smaller arrays are sorted)._
