#import "@preview/zebraw:0.6.0": *
#show: zebraw

*2.1-1* Using figure 2.2 as model, illustrate operation of _Insertion-Sort_ on an array initially containing the sequence $[31, 41, 59, 26, 41, 58]$

$
[31, 41, 59, 26, 41, 58], #text(" current element is 41")\
[31, 41, 59, 26, 41, 58], #text(" current element is 59")\
[31, 41, 59, 26, 41, 58], #text(" current element is 26")\
$
 
_during this step, elements that form subarray [1:3] are shifted to the right by one. after position [1] is freed, 26 is placed in the beginning of the array._

$
[26, 31, 41, 59, 41, 58], #text(" current element is 41")\
$

_since #h(.25%) $59 > 41$, but #h(.25%) $41 <= 41$,_ #h(.25%) `while` _loop only iterates once, and during the iteration, _41 _switches positions with_ #h(.25%) 59

$
[26, 31, 41, 41, 59, 58], #text(" current element is 58")\
$

_this step is identical to previous, with_ #h(.25%) 58 _switching positions with_ #h(.25%) 59

$
[26, 31, 41, 41, 58, 59], #text(" loop terminates")\
$

*2.1-2* Consider the procedure _Sum-Array_ on the facing page. It computes the sum of the $n$ numbers in the array $A[1 : n]$. State a loop invariant for this procedure, and use its initialization, maintenance, and termination properties to show that the _Sum-Array_ procedure retrurns the sum of the numbers in $A[1 : n]$.


#let sumArray = [
_*Sum-Array(A, n)*_
```
sum = 0
for i = 1 to n
  sum = sum + A[i]
return sum
```
]

#zebraw(sumArray)

_consider the following invariant:_

_during $i$th iteration, variable _ `sum` _equals to the sum of numbers in subarray_ $ A[1:(i-1 + i thick slash thick n)] $  _note that "/" is integer division operator, returning the quotient._

_INITIALIZATION:_

_as per authors' note in the footer of p.21, _ `for` _loop counter variables (e. g. _`i`_) are considered to be initialized when proving loop invariant for INIT section. having variable _ `i` _initialized to_ `1`_, one can simplify loop invariant expression to:_ 

$
  A[1 : 0]
$

_since there are no elements in this subarray, and variable _ `sum` _currently holds value _ `0`_, it can be said that loop invariant is correct for the INIT section_

_MAINTENANCE:_

_since invariant is proved to be true prior to first iteration, and during subsequent iterations _ $A[i]$ _is added to variable _ `sum`, _the aforementioned variable indeed holds sum of elements forming the subarray in the invariant statement. as a concrete example, below is subarray's boundaries evaluated for the second _`(i = 2)` _iteration:_

$
  A[1 : 1]
$

_such subarray only holds first element of the original sequence, and variable _`sum` _has already been populated with its value during previous iteration._

_TERMINATION:_

_right after the loop has terminated _ `sum` _has a value that corresponds to sum of elements in the subarray:_

$
  A[1 : n - 1 + n / n] = A[1 : n]
$

_which is the given array itself._ 

*2.1-3* Rewrite the _Insertion-Sort_ procedure to sort into monotonically decreasing instead of monotonically increasing order.

#let insertionSort = [
_*Insertion-Sort(A, n)*_
```
for i = 2 to n
  key = A[i]
  j = i - 1
  while j > 0 and A[j] < key
    A[j + 1] = A[j]
    j = j - 1
  A[j + 1] = key
```]

#zebraw(insertionSort)
