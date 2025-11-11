*1-1 Comparison of running times*

For each function $f(n)$ and time $t$ in the following table, determine the largest size $n$ of a problem that can be solved in time $t$, assuming that the algorithm to solve the problem takes $f(n)$ microseconds.

#align(center)[#table(
  columns: 8,
  [], [1 second], [1 minute], [1 hour], [1 day], [1 month], [1 year], [1 century],
  [$lg n$], [$2^(10^6)$], [$2^(6 #sym.dot 10^7)$], [$2^(3.6 #sym.dot 10^9)$], [$2^(8.64 #sym.dot 10^10)$], [$2^(2.59 #sym.dot 10^12)$], [$2^(3.11 #sym.dot 10^13)$], [$2^(3.11 #sym.dot 10^15)$],
  [$sqrt(n)$], [$10^12$], [$3.6 #sym.dot 10^15$], [$1.3 #sym.dot 10^19$], [$7.47 #sym.dot 10^21 $], [$6.72 #sym.dot 10^24$], [$9.68 #sym.dot 10^26$], [$9.68 #sym.dot 10^30$], 
  [$n$], [$10^6$], [$6 #sym.dot 10^7$], [$3.6 #sym.dot 10^9$], [$8.64 #sym.dot 10^10$], [$2.59 #sym.dot 10^12$], [$3.11 #sym.dot 10^13$], [$3.11 #sym.dot 10^15$], 
  [$n lg n$], [$6.27 #sym.dot 10^4$], [$2.8 #sym.dot 10^6$], [$1.33 #sym.dot 10^8$], [$2.76 #sym.dot 10^9$], [$7.18 #sym.dot 10^10$], [$7.87 #sym.dot 10^11$], [$6.77 #sym.dot 10^13$], 
  [$n^2$], [1,000], [7,750], [60,000], [293,000], [1,610,000], [5,580,000], [55,800,000], 
  [$n^3$], [100], [392], [1,530], [4,420], [13,700], [31,300], [146,000], 
  [$2^n$], [19], [25], [31], [36], [41], [44], [51], 
  [$n!$], [9], [11], [12], [13], [15], [16], [17], 
)]

#align(center)[
1 second = $10^6 #sym.mu s$

1 minute = 60 seconds = $6 #sym.dot 10^7 #sym.mu s$

1 hour = 3600 seconds = $3.6 #sym.dot 10^9 #sym.mu s$

1 day = 864000 seconds = $8.64 #sym.dot 10^10 #sym.mu s$

1 month = 25920000 seconds = $2.592 #sym.dot 10^12 #sym.mu s$

1 year = 311040000 seconds = $3.1104 #sym.dot 10^13 #sym.mu s$

1 century = 31104000000 seconds = $3.1104 #sym.dot 10^15 #sym.mu s$
]
