#!/bin/bash
file="/home/ridvan/inputFile.dat"  #opening input file.
while read -r VAR1 VAR2 VAR3  #read input file and assign datas into VAR1,VAR2,VAR3 after every space.
do
	case $VAR1 in #if first variable is binary....
	0b*) IFS='b' read -ra NAMES1 <<< "$VAR1" #seperate  0b from the binary number
             IFS='b' read -ra NAMES2 <<< "$VAR3" #seperate 0b from the binary number
	     let "bin = 2#${NAMES1[1]}" #convert from binary to decimal
	     let "bin1 = 2#${NAMES2[1]}" #convert from binary to decimal
             case $VAR2 in # detection of the operation
	     "+") let "sum = $bin + $bin1" #addition of two number as decimal
                  printf "(positive)\t0b" >> outputFile.dat #writing 0b part and mark into output file
		  echo -e "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat;; #converting sum to binary and writing into output file
	     "-") if [[ $bin -gt $bin1 ]]; then #condition of positive or negative number
		  let "sum = $bin - $bin1" #substraction of two number as decimal
                  printf "(positive)\t0b" >> outputFile.dat #writing 0b part and mark into output file
		  echo "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat #converting sum to binary and writing into output file
		  else
                  let "sum = $bin1 - $bin" #substraction two number as decimal
                  printf "(negative)\t0b" >> outputFile.dat #writing 0b part and mark into output file
		  echo "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat #converting sum to binary and writing into output file
		  fi;;
             "x") let "sum = $bin * $bin1" #multiplication of two number as decimal
		  printf "(positive)\t0b" >> outputFile.dat #writing 0b part and mark into output file
                  echo "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat;; #converting sum to binary and writing into output file
             "/") let "sum = $bin / $bin1" #division of two number as decimal
		  printf "(positive)\t0b" >> outputFile.dat #writing 0b part and mark into output file
                  echo "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat;; #converting sum to binary and writing into output file
             "%") let "sum = $bin % $bin1" #modulo of two number as decimal
		  printf "(positive)\t0b" >> outputFile.dat #writing 0b part and mark into output file
                  echo "ibase=10;obase=2; $sum" | bc -l >> outputFile.dat;; #converting sum to binary and writing into output file
	esac
esac
	case $VAR1 in #if first variable is hexadecimal..
	0x*)case $VAR2 in #detection of the operation 
	    "+") printf "(positive)\t0x%X\n" $(($VAR1 + $VAR3)) >> outputFile.dat;; #addition of two number as hexadecimal and writing of the result and mark into output file
	    "-") if [[ $VAR1 -gt $VAR3 ]]; then #condition of positive or negative number
		 printf "(positive)\t0x%X\n" $(($VAR1 - $VAR3)) >> outputFile.dat #substraction of two number as hexadecimal and writing of the result and mark into output file
	         else
		 printf "(negative)\t0x%X\n" $(($VAR3 - $VAR1)) >> outputFile.dat #substraction of two number as hexadecimal and writing of the result and mark into output file
		 fi;;
	    "x") printf "(positive)\t0x%X\n" $(($VAR1 * $VAR3)) >> outputFile.dat ;; #multiplication of two number as hexadecimal and writing of the result and mark into output file
	    "/") printf "(positive)\t0x%X\n" $(($VAR1 / $VAR3)) >> outputFile.dat ;; #division of two number as hexadecimal and writing of the result and mark into output file
	    "%") printf "(positive)\t0x%X\n" $(($VAR1 % $VAR3)) >> outputFile.dat;; #modulo of two number as hexadecimal and writing of the result and mark into output file
	esac
esac
	#operations on the decimal numbers..
	case $VAR1 in
	1*) case $VAR2 in #if number starts 1....
	    "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;; #addition
	    "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;; #substraction
	    "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;; #multiplication
	    "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;; #division
            "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;; #modulo
	esac
esac
	case $VAR1 in
	2*) case $VAR2 in #if number starts 2....
	    "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	    "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	    "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	    "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	    "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	3*) case $VAR2 in #if number starts 3....
	    "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	    "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	    "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	    "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	    "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	4*)  case $VAR2 in #if number starts 4....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	5*)  case $VAR2 in #if number starts 5....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	6*)  case $VAR2 in #if number starts 6....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	7*)  case $VAR2 in #if number starts 7....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	8*)  case $VAR2 in #if number starts 8....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
	case $VAR1 in
	9*)  case $VAR2 in #if number starts 9....
	     "+") echo $(( $VAR1 + $VAR3)) >> outputFile.dat;;
	     "-") echo $(( $VAR1 - $VAR3)) >> outputFile.dat;;
	     "x") echo $(( $VAR1 * $VAR3)) >> outputFile.dat;;
	     "/") echo $(( $VAR1 / $VAR3)) >> outputFile.dat;;
	     "%") echo $(( $VAR1 % $VAR3)) >> outputFile.dat;;
	esac
esac
        #operations on the decimal numbers..

	#conversions...
	case $VAR2 in #if first variable's base  is 2...
	2) IFS='b' read -ra NAMES1 <<< "$VAR1" #seperate  0b from the binary number
	     case $VAR3 in #determining the base on which to convert the number
	     10)  echo "$((2#${NAMES1[1]}))" >> outputFile.dat;; #converting from base 2 to base 10 and writing into output file
	     16)  let "bin = 2#${NAMES1[1]}" #converting from base 2 to base 10 
		   printf "0x%X\n" $bin >> outputFile.dat;; #converting from base 10 to base 16 and writing into output file
	esac
esac
	case $VAR2 in #if first variable's base  is 10...
	10) case $VAR3 in #determining the base on which to convert the number
	    2) printf "0b" >> outputFile.dat # writing of 0b part..
	       echo "obase=2; $VAR1" | bc >> outputFile.dat;; #converting from base 10 to base 2 and writing into output file
	    16) printf "0x" >> outputFile.dat #writing of 0x part..
		echo "obase=16; $VAR1" |bc >> outputFile.dat;; #converting from base 10 to base 16 and writing into output file
	esac
esac
	case $VAR2 in #if first variable's base is 16...
	16) case $VAR3 in # determining the base on which to convert the number
	    2)  IFS='x' read -ra NAMES1 <<< "$VAR1" #seperate 0x part from the binary number 
		printf "0b" >> outputFile.dat # writing of 0b part..
		echo "ibase=16;obase=2; ${NAMES1[1]}" | bc -l >> outputFile.dat;; #converting from base 16 to base 2 and writing into output file
	    10) printf "%d\n" $VAR1 >> outputFile.dat;; #converting from base 16 to base 10 and writing into output file
	esac
esac
done <"$file"



