#import "@preview/zebraw:0.6.0": *
#show: zebraw

*2.2-1* Express the function $n^3/1000 + 100n^2 - 100n + 3$ in terms of $Theta$-notation.

$
Theta(n^3)
$

*2.2-2* Consider sorting $n$ numbers stored in array $A[1 : n]$ by first finding the smallest element of $A[1 : n]$ and exchanging it with the element if $A[1]$. Then find the smallest element of $A[2 : n]$, and exchange it with $A[2]$. Then find the smallest element of $A[3 : n]$, and exchange it with $A[3]$. Continue in this manner for the first $n - 1$ elements of A. Write a pseudocode for this algorithm, which is know as selection sort. What loop invariant does this algorithm maintain? Why does it need to run for the first $n - 1$ elements, rather than for all $n$ elements? Give the worst-case running time of selection sort in $Theta$-notation. Is the best case running time any better?

#let selectionSort = [
  _*Selection-Sort(A, n)*_

  ```
  for i = 1 to n - 1
    smallestEl = A[i]

    for j = i + 1 to n
      if A[j] < smallestEl
        smallestEl = A[j]

    A[i] = smallestEl

  ```
]

#zebraw(selectionSort)

_consider the following loop invariant:_

#align(center)[_during $i$th iteration subarray_ $A[1 : i]thin$_is sorted_.]

_INITIALIZATION:_

$i = 1 arrow.r.double thin$ _the subarray is_ $A[1 : 1] thin$ _(a single element). such array is always sorted._

_MAINTENANCE:_

_during any subsequent iteration the smallest element in the unsorted part of the array is found and placed next to the sorted subarray. if the newly found element was smaller than any of the elements in the sorted part, it would have been found during previous iterations (thus making such situation impossible by design). in such configuration, loop invariant is maintained during loop execution._

_TERMINATION:_

$i = n arrow.r.double thin$ _the subarray is_ $A[1 : n].$_ since subarray stays sorted during loop execution (MAINTENANCE statement), and subarray after loop termination consitutes the original array, it can be said that algorithm is correct._ 

_it would not have been wise to have the algorithm run for all the elements of the given array since last iteration of the outer _ `for` _loop would result in redundant reassignment of _ $A[i]$ _to itself (without inner _ `for` _loop ever being invoked)_.

_it can be immediately said from absence of any conditional statements (other than upper-bound check for counter variables) in the loops of the algorithm, that worst-case and best-case running times are equivalent. linear search is an input-independent operation (in terms of input's organization, not size). both worst- and best-case running time is_ $Theta(n^2)$. 

*2.2-3* Consider linear search again (see Exercise 2.1-4). How many elements of the input array need to be checked on average, assuming that the element being searched for is equally likely to be any element of the array? How about in the worst case? Using $Theta$-notation, give the average-case and worst-case running times of linear search. Justify your answers.

#let linearSearch = [
  _*Linear-Search(A, n)*_
  ```
  for i = 1 to n
    if A[i] == x
      return i
  return NIL
  ```
]

#zebraw(linearSearch)

_on average_ $(Sigma_(i = 1)^n i) / n = (n + 1) / 2$ _checks have to be performed._

_in the worst-case, the element being searched for is located at the end of the array, so_ $n$ _elements have to be checked._

_running time for both cases is expressed as_ $Theta(n)$_, since highest-order terms are $n$, and constants are dropped._ 

*2.2-4* How can you modify any sorting algorithm to have a good best-case running time?

_checking whether or not the array is already sorted brings *Selection-Sort*'s best-case running time from $Theta(n^2)$ down to $Theta(n).$ the same applies to any algorithm that has equal best-case and worst-case running times._
