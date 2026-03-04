*1.1.* The ciphertext below was encrypted using a subsitution cipher. Decrypt the ciphertext without knowledge of the key.

`lrvmnir bpr sumvbwvr jx bpr lmiwv yjeryrkbi jx qmbm wi bpr xjvni mkd ymibrut jx irhx wi bpr riirkvr jx ymbinlmtmipw utn qmumbr dj w ipmhh but bj rhnvwdmbr bpr yjeryrkbi jx bpr qmbm mvvjudwko bj yt wkbrusurbmbwjk lmird jk xjubt trmui jx ibndt 

wb wi kjb mk rmit bmiq bj rashmwk rmvp yjeryrkb mkd wbi iwokwxwvmkvr mkd ijyr ynib urymwk nkrashmwkrd bj ower m vjyshrbr rashmkmbwjk jkr cjnhd pmer bj lr fnmhwxwrd mkd wkiswurd bj invp mk rabrkb bpmb pr vjnhd urmvp bpr ibmbr jx rkhwopbrkrd ywkd vmsmlhr jx urvjokwgwko ijnkdhrii ijnkd mkd ipmsrhrii ipmsr w dj kjb drry ytirhx bpr xwkmh mnbpjuwbt lnb yt rasruwrkvr cwbp qmbm pmi hrxb kj djnlb bpmb bpr xjhhjcwko wi bpr sujsru msshwvmbwjk mkd wkbrusurbmbwjk w jxxru yt bprjuwri wk bpr pjsr bpmb bpr riirkvr jx jqwkmcmk qmumbr cwhh urymwk wkbmvb`

1. Compute the relative frequency of all letters `A...Z` in the ciphertext. You may want to use a tool such as the open-source program CrypTool for this task. However, a paper and pencil approach is also doable.

2. Decrypt the ciphertext with the help of the relative letter frequency of the English language (see Table 1.1 in Section 1.2.2). Note that the text is relatively short and that the letter frequencies in it might not perfectly align with that of general English language from the table.

3. Who wrote the text? 

_1. Here's the computed relavite frequency of each letter in the ciphertext:_

#table(
  columns: 27,
     "", "R", "B", "M", "K", "J", "W", "I", "P", "U", "D", "H", "V", "X",    
         "Y", "N", "S", "T", "L", "Q", "O", "E", "A", "C", "F", "G", "Z", 
    "%", "13", "11", "10", "8", "7", "7", "6", "5", "4", "4", "4", "3", 
    "3", "3", "3", "3", "2", "1", "1", "1", "1", "1", "1", "0", "0", "-"
)

_2. After comparing the table above against Table 1.1 in Section 1.2.2 and decrypting the ciphertext, we get:_

`because the practice of the basic movements of kata is the focus and mastery of self is the essence of matsubayashi ryu karate do i shall try to elucidate the movements of the kata according to my interpretation based on forty years of study 

it is not an easy task to explain each movement and its significance and some must remain unexplained to give a complete explanation one would have to be qualified and inspired to such an extent that he could reach the state of enlightened mind capable of recognising soundless sound and shapeless shape i do not deem myself the final authority but my experience with kata has left no doubt that the following is the proper application and interpretation i offer my theories in the hope that the essence of okinawan karate will remain intact`

_3. Shōshin Nagamine_

*1.2.* We received the following ciphertext which was encoded with a shift cipher:

`xultpaajcxitltlxaarpjhtiwtgxktghidhipxciwtvgtpilpit ghlxiwiwtxgqadds`

1. Perform an attack against the cipher based on a letter frequency count: How many letters do you have to identify through a frequency count to recover the key? What is the cleartext?

2. Who wrote the message?

_1. Since we know that the message was encrypted with the shift cipher, identifying a single letter gives us the key to the cipher. The cleartext is:_

`if we all unite we will cause the rivers to stain the great waters with their blood`

_2. Tecumseh_

*1.3.* We consider the long-term security of the Advanced Encryption Standard (AES) with a key length of 128 bits with respect to exhaustive key-search attacks. AES is perhaps the most widely used symmetric cipher at this time.

1. Assume that an attacker has a special-purpose hardware chips (also known as ASICs, or application-specific integrated circuits) that check $5 dot 10^8$ keys per second, and she has a budget of \$1 million. One ASIC costs \$50, and we assume 100% overhead for integrating the ASIC (manufacturing the printed circuit boards, power supply, cooling, etc.). How many ASICs can we run in parallel with the given budget? How long does an average key search take? Relate this time to the age of the Universe, which is about $10^10$ years. 

2. We try now to take advances in computer technology into account. Predicting the future tends to be tricky but the estimate usually applied is Moore’s law, which states that the computing power doubles every 18 months while the costs of integrated circuits stay constant. How many years do we have to wait until a key-search machine can be built to break AES with 128 bits with an average search time of 24 hours? Again, assume a budget of \$1 million (do not take inflation into account). 

_1. With \$1 million the attacker can purchase $10^6 : 50 = 20000$ ASICs. If all of those are run in parallel, $10^13$ key checks can be checked each second. This means that an average key search takes only about $10^18$ years, which is approximately 100,000,000 lifetimes of the universe._

_2. This would take approximately 102 years._

*1.4.* We now consider the relation between passwords and key size. For this purpose we consider a cryptosystem where the user enters a key in the form of a password.

1. Assume a password consisting of 8 letters, where each letter is encoded with the ASCII code (7 bits per character, i.e., 128 possible characters). What is the size of the key space which can be constructed by such passwords?

2. What is the corresponding key length in bits?

3. Assume that most users use only the 26 lowercase letters from the alphabet instead of the full 7 bits of the ASCII-encoding. What is the corresponding key length in bits in this case?

4. At least how many characters are required for a password in order to generate a key length of 128 bits in case of letters consisting of

  a. 7-bit characters?

  b. 26 lowercase letters from the alphabet?

_1. $128^7 = 2^49$_

_2. 49 bits_

_3. 32 bits_

_4. (a) 19 characters_

_5. (b) 28 characters_

*1.5.* In case of a brute-force attack, we have to search the entire key space of a cipher. To prevent such a search from being successful, the key space must be sufficiently large. It is crucial to observe that the key space grows exponentially with the key length in bits. With this problem we want to get a better understanding of such an exponential growth. According to an anecdote, the inventor of chess asked the king for a humble reward in the form of grains of rice: On the first feild of the chess board, the king should put one grain of rice, on the second feild two grains of rice, on the third field four grains etc. 

1. How many grains of rice are on the last field of the chess board?

2. A single grain of rice has a weight of approximately 0.03 g. What is the total weight of all grains on the board? Compare the total weight with the worldwide yield of approximately 480 million tons per year. 

Now, let us consider a piece of paper that is repeatedly folded. The thickness of the paper increases exponentially: It has twice the thickness if folded once, four times the thickness if folded twice etc. For the following tasks, we assume a piece of paper which is 0.1 mm thick. 

3. How thick is the paper after 10 folding steps?

4. How often do we need to fold it to obtain a thickness of 1 km? 

5. How often do we need to fold it to obtain the distance from the Earth to the Moon (384,400 km)?

6. How often do we need to fold it to obtain the distance of one light year, i.e., $9.46 dot 10^15$ km? 

_Remark:_ Obviously, folding a piece of paper that often will not work out very well in practice. 

_1. approximately $9 dot 10^18$ grains_

_2. the total weight is approximately 553 billion tonns, which is more than a thousand times more than the annual worldwide yield_

_3. 102.4 mm_

_4. 24 times_

_5. 42 times_

_6. 56 times_

*1.6.* In this problem we consider the difference between end-to-end encryption (E2EE) and more classical approaches to encrypting when communicating over a channel that consists of multiple parts. E2EE is widely used, e.g., in instant messaging services such as WhatsApp or Signal. The idea behind this is that encryption and decryption are performed by the two users who communicate and all parties eavesdropping on the communication link cannot read (or meaningfully manipulate) the message. 

In the following we assume that each individual encryption with the cipher e() is secure, i.e., the cryptographic algorithm cannot be broken by an adversary. First we look at the communication between two smartphones without end-to-end encryption, shown in Figure 1.7. Encryption and/or decryption happen three times in this setting: Between Alice and base station A (air link), between base stations A and B (through the internet), and between base station B and Bob (again, air link).

1. Describe which of the following attackers can read (and meaningfully manipulate) messages. 

  a. A hacker who can listen to (and alter) messages on the air link between Alice and her base station. 

  b. The mobile operator who runs and controls base station A. 

  c. A national law enforcement agency that has power over the mobile operator and gains access to base station A or B. 

  d. An intelligence agency of a foreign country that can wiretap any internet communication. 

  e. The mobile operator who runs and controls base station B.

  f. A hacker who can listen to (and alter) messages on the air link between Bob and his base station. 

We now look at the same communication system but this time Alice and Bob use E2EE, cf. Figure 1.8

2. Describe which of the following attackers can read (and meaningfully manipulate) messages in the communication systems with E2EE. 

  a. A hacker who can listen to (and alter) messages on the air link between Alice and her base station. 

  b. The mobile operator who runs and controls base station A. 

  c. A national law enforcement agency that has power over the mobile operator and gains access to base station A or B. 

  d. An intelligence agency of a foreign country that can wiretap any internet communication. 

  e. The mobile operator who runs and controls base station B. 

  f. A hacker who can listen to (and alter) messages on the air link between Bob and his base station.

_1. b, c, d, e_

_2. none of the above_

*1.7.* As we learned in this chapter, modular arithmetic is the basis of many cryptosystems. We will now provide a number of exercises that help us get familiar with modular computations. Let’s start with an easy one: Compute the following result without a calculator.

1. $15 dot 29 mod 13$

2. $2 dot 29 mod 13$

3. $2 dot 3 mod 13$

4. $-11 dot 3 mod 13$

The results should be given in the range from 0,1,..., modulus-1. Briefly describe the relation between the different parts ofthe problem.

_1. $15 dot 29 = 435 = 33 dot 13 + 6 = 6 mod 13$_

_2. $2 dot 29 = 58 = 4 dot 13 + 6 = 6 mod 13$_

_3. $2 dot 3 = 6 = 6 mod 13$_

_4. $-11 dot 3 = -33 = -3 dot 13 + 6 = 6 mod 13$_

_all of the expressions on the left side of the $mod$ operator in the given problem are members of the same equivalence class_

*1.8.* Compute without a calculator:

1. $1 \/ 5 mod 13$

2. $1 \/ 5 mod 7$

3. $3 dot 2 \/ 5 mod 7$

_1. $1 \/ 5$_

_2. $1 \/ 5$_

_3. $6 \/ 5$_
