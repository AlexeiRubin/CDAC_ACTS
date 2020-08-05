#1. Write a program to find sum and product of two no.s

#!/bin/bash

echo "Enter the value of first number\n"

read A

echo "Enter the Value of second number\n"

read B

A) Using let

let sum=$A+$B

echo "The Sum of $A and $B is : $sum"

let prod=$A*$B

echo "The Product of $A and $B is : $prod"

-----------------------------------
-----------------------------------

B) Using expr

sum=`expr $A + $B`

echo "The Sum of $A and $B is : $sum"

prod=`expr $A \* $B`

echo "The Product of $A and $B is : $prod"

-----------------------------------
-----------------------------------

C) Using bc

sum=`echo "$A+$B" | bc`

echo "The Sum of $A and $B is : $sum"

prod=`echo "$A * $B" | bc`

echo "The Product of $A and $B is : $prod"

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a program to perform floating point division

#!/bin/bash

echo "Enter the first floating point number"
 
read A
 
echo "Enter the second floating point number"
 
read B
 
res=`echo "scale=4; $A / $B" | bc -l`
 
echo "The result is $res"

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Write a program to print calendar of current month in next year, previous years.
#   For eg:-sep 2014,sep 2012 if current month is sep 2013

#!/bin/bash

echo "Enter the month"

read month

echo "Enter the year"

read year

echo "-------Previous Year-------"
cal $month $((--year))

echo "-------Current Year-------"
cal $month $((++year))

echo "-------Next Year-------"
cal $month $((++year))

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Write a program to check whether given no.is even or odd

#!/bin/bash

echo "Enter the number"

read num

if [[ $((num%2)) -eq 0 ]]
then
    echo "$num is Even"
else
    echo "$num is Odd"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. a) Write a script to find biggest of three no.s
#   b) To find avg of 3 no.s, read no.s from keyboard

#!/bin/bash

echo "Enter the first number"

read A

echo "Enter the second number"

read B

echo "Enter the third number"

read C

A)

if [[ $A -gt $B ]]
then
    if [[ $A -gt $C ]]
    then
        echo "$A is the greatest"
    else
        echo "$C is the greatest"
    fi
else
    if [[ $B -gt $C ]]
    then
        echo "$B is the greatest"
    else
        echo "$C is the greatest"
    fi
fi

-----------------------------------
-----------------------------------

B)

avg=`echo "scale=4; $((A+B+C)) / 3" | bc -l`
 
echo "The average is : $avg"

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Write a script to check the type of a triangle.
#   Sides of the triangle should be provided as command line arguments.

#!/bin/bash

if [ ! $(($1+$2)) -gt $3 ] || [ ! $(($2+$3)) -gt $1 ] || [ ! $(($1+$3)) -gt $2 ]
then
	echo "Invalid"
elif [ $1 -eq $2 ] && [ $2 -eq $3 ]
then
	echo "Equilateral Triangle"
elif [ $1 -eq $2 ] || [ $2 -eq $3 ] || [ $1 -eq $3 ]
then
	echo "Isoceles Triangle"
else
	echo "Scalene Triangle"

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Write a script to print day of the week using

A) Using elif

#!/bin/bash

echo "Enter a number"

read num

if [[ $num -eq 1 ]]; then
    echo "Monday"
elif [[ $num -eq 2 ]]; then
    echo "Tuesday"
elif [[ $num -eq 3 ]]; then
    echo "Wednesday"
elif [[ $num -eq 4 ]]; then
    echo "Thursday"
elif [[ $num -eq 5 ]]; then
    echo "Friday"
elif [[ $num -eq 6 ]]; then
    echo "Saturday"
elif [[ $num -eq 7 ]]; then
    echo "Sunday"
else
    echo "Invalid Input"
fi

-----------------------------------
-----------------------------------

B) Using case

#!/bin/bash

echo "Enter a number"

read num

case $num in

    1)
        echo "Monday"
        ;;
    
    2)
        echo "Tuesday"
        ;;
    
    3)
        echo "Wednesday"
        ;;
    
    4)
        echo "Thursday"
        ;;
    
    5)
        echo "Friday"
        ;;
    
    6)
        echo "Saturday"
        ;;
    
    7)
        echo "Sunday"
        ;;
        
    *)
        echo "Invalid Input"
        ;;
esac

----------------------------------------------------------------------
----------------------------------------------------------------------

#8. To check given year is leap or not

#!/bin/bash
 
echo "Enter an year"
 
read year
 
if [[ $((year % 100)) -eq 0 ]]
then
	if [[ $((year % 400)) -eq 0 ]]
	then
		echo "$year is a leap year"
	fi
else
	if [[ $((year % 4)) -eq 0 ]]
	then
		echo "$year is a leap year"
	else
		echo "$year is NOT a leap year"
	fi
fi

----------------------------------------------------------------------
----------------------------------------------------------------------