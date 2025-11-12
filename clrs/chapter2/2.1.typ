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

