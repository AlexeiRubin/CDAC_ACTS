#1. Write a menu based script to perform following string operations:
#   a) To find length of a string.
#   c) Copying string.
#   d) Concatenation of strings.
#   e) Comparison of two strings.
#   f) Reversing a string.

#!/bin/bash

while [ 1 ]; do
    echo "Enter 1 to find the length of the string"
    echo "Enter 2 to copy string"
    echo "Enter 3 to concatenate two strings"
    echo "Enter 4 to compare  two strings"
    echo "Enter 5 to reverse a string"
    echo "Entet 6 to EXIT"

    read choice

    case $choice in

        1)	echo "Enter a string"
        
            read str
    
            echo "The length is ${#str}"
            ;;
        
        2)  echo "Enter a string"
            
            read str
            
            cp_str=$str
            
            echo "The copied string is : $cp_str"
            ;;
        
        3)  echo "Enter the first string"
            
            read str1
            
            echo "Enter the second string"
            
            read str2
            
            str3=$str1$str2
            
            echo "The concatenated string is : $str3"
            ;;
            
        4)	echo "Enter the first string"
            
            read str1
            
            echo "Enter the second string"
            
            read str2
            
            if [[ $str1 == $str2 ]]; then
                echo "The strings are equal"
            else
                echo "The strings are NOT equal"
            fi
            ;;
        
        5)	echo "Enter a string"
            
            read str
            
            rev_str=`echo $str | rev`
            
            echo "The reversed string is : $rev_str"
            ;;
    esac
    
    if [[ $choice -eq 6 ]]; then
        break
    fi
done

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a script to check whether given argument is a regular file or directory.

#!/bin/bash

if [ -d $1 ]; then
	echo "$1 is a Directory"
else
	echo "$1 is a File"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. To check given year is leap or not.

#!/bin/bash
 
echo "Enter an year"
 
read year
 
if [[ $((year % 100)) -eq 0 ]]; then
	if [[ $((year % 400)) -eq 0 ]]; then
		echo "$year is a leap year"
	fi
else
	if [[ $((year % 4)) -eq 0 ]]; then
		echo "$year is a leap year"
	else
		echo "$year is NOT a leap year"
	fi
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Write a script to create 10 directories, say exam1,exam2,...,exam10.
#   Report error if a directory/file exists with the same name.

A) Using mkdir option

#!/bin/bash

`mkdir exam{1..10}`
if [[ $? -eq 0 ]]; then
    echo "Directories created"
	ls -l
else
    echo "Error Directories already exist"
fi

B) Using seq and for loop

#!/bin/bash

nos=`seq 1 1 10`
str="exam"

for n in $nos; do
	if [ -d $str$n -o -f $str$n ]; then
		echo "Error $str$n Directory already exists"
		continue
	else
		mkdir $str$n
	fi
done

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Write a script to check each entry of a directory is a file or directory.

#!/bin/bash

entries=`ls`

for n in $entries; do
	if [ -d $n ]; then
		echo "$n is a Directory"
	else
		echo "$n is a File"
	fi
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Write a script to find substring inside a string.

A.1) Using REGEX

#!/bin/bash

if [[ $1 =~ .*$2.* ]]; then
	echo "Sub String $2 Found in $1"
else
	echo "Sub String $2 NOT Found in $1"
fi


A.2) Using REGEX

#!/bin/bash

if [[ "$1" == *"$2"* ]]; then
	echo "Sub String $2 Found in $1"
else
	echo "Sub String $2 NOT Found in $1"
fi

-----------------------------------
-----------------------------------

B.1) Using GREP

#!/bin/bash

if `echo $1 | grep -q $2`; then
	echo "Sub String $2 Found in $1"
else
	echo "Sub String $2 NOT Found in $1"
fi


B.2) Using GREP

#!/bin/bash

if `grep -q $2 <<< $1`; then
	echo "Sub String $2 Found in $1"
else
	echo "Sub String $2 NOT Found in $1"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Write a script to find substring inside a file.

#!/bin/bash

echo "Enter the name of the File"
read fileName

echo "Enter the Substring to Search"
read subStr

if [ -f $fileName ]; then	
	flag=`grep $subStr $fileName | wc -w`
	if [ $flag -ne 0  ]; then
		echo "Sub String $subStr Found in File $fileName"
	else
		echo "Sub String $subStr NOT Found in File $fileName"
	fi
else
	echo "File named $fileName does NOT exist"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#8. Write a script to store PRN no in an array:
#   a) Ask each student to store their personal info in file. If the PRN does not exists in the array then,
#   b) Give exit option

#!/bin/bash

PRN=(001 003 005 007 009 011 013 015 017 019)

while [ 1 ]; do
	echo "Enter 1 for Student Registration"
	echo "Enter 2 to EXIT"

	read choice

	case $choice in
	
		1)	echo "Enter the PRN"
			read rNo
			flag=0

			for n in "${PRN[@]}"; do
				if [ $rNo -eq $n ]; then
					echo "Student Record of $rNo Exists"
					flag=1
					break
				fi
			done
				
			if [ $flag -eq 0  ]; then
				echo "Enter Name and Course Name"
				cat > studentRegistration.txt
				PRN+=($rNo)
			fi
			;;
	esac
	
	if [[ $choice -eq 2 ]]; then
        break
    fi
done

----------------------------------------------------------------------
----------------------------------------------------------------------

OPTIONAL

#1. Write a script to replace occurrence of given string in file.

#!/bin/bash

echo "Enter the Name of the File"
read fileName

if [ -f $fileName ]; then
	echo "Enter the srting to be replaced"
	read str

	echo "Enter the replacement string"
	read repStr

	sed "s/$str/$repStr/g" $fileName
else
	echo "File named $fileName does NOT exist"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a menu driven script. (Use infinite loop for options. Program should ask for options continuously ):
#   a)shows ip address( use ip a)
#   b)shows free disk space (use df command)
#   c)shows free ram(use free command)
#   d)shows system info(use uname -a command)
#   e)list all files in home directory
#   f)list all files from /etc/ ends with .conf

#!/bin/bash

while [ 1 ]; do
	echo "Enter 1 to show IP Address"
	echo "Enter 2 to show Free Disk Space"
	echo "Enter 3 to show Free RAM"
	echo "Enter 4 to show System Information"
	echo "Enter 5 to show all Files in the Home Directory"
	echo "Enter 6 to show all Configuration Files in /etc/"
	echo "Enter 7 to EXIT"

	read choice

	case $choice in

		1)	ip a
			;;
		
		2) 	df -h
			;;
		
		3)  free -h
			;;
		
		4)  uname -a
			;;
		
		5)  ls -l ~/ | grep ^-
			;;
		
		6)  cd /etc/
			
			ls *.conf
			;;
	esac
	
	if [[ $choice -eq 7 ]]; then
        break
    fi
done

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Write a menu driven file manager that lets you list,create and delete files or directories.

#!/bin/bash

while [ 1 ]; do
	echo "Enter 1 to List a Directory"
	echo "Enter 2 to Create Files"
	echo "Enter 3 to Create Directories"
	echo "Enter 4 to Delete Files"
	echo "Enter 5 to Delete Directories"
	echo "Enter 6 to EXIT"

	read choice

	case $choice in

		1) 	echo "Enter the Name of the Directory"
			read dirName
			ls $dirName
			;;

		2)  echo "Enter the File Name, press q to stop"
			while read fileName && [[ "$fileName" != q ]]; do
				touch $fileName
			done
			;;

		3)  echo "Enter Directory Name, press q to stop"
			while read dirName && [[ "$dirName" != q ]]; do
				mkdir $dirName
			done
			;;

		4)  echo "Enter File Name, press q to stop"
			while read fileName && [[ "$fileName" != q ]]; do
				rm $fileName
			done
			;;

		5)  echo "Enter Directory Name, press q to stop"
			while read dirName && [[ "$dirName" != q ]]; do
				rm -r $dirName
			done
			;;
	esac
	
	if [[ $choice -eq 6 ]]; then
        break
    fi
done

----------------------------------------------------------------------
----------------------------------------------------------------------