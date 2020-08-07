#1. Write a shell script to do following operation:
#	a) Start ssh service
#	b) copy readme.txt from test.rebex.net
#	c) Print readme.txt file on terminal
#	d) Find substring given by user in readme.txt and replace it with “****”

#!/bin/bash

sudo systemctl start ssh

scp demo@test.rebex.net:/readme.txt ./

cat readme.txt

echo "Enter substring to be replaced with ****"
read subStr

sed "s/$subStr/****/g" readme.txt

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a menu driven shell script to get system information
#   a)Print list of PCI Cards of your pc(Use lspci commands)
#   b)Print Logs of your pc(use dmesg command)
#   c)Print usb devices connected to your pc(lsusb command)
#   d)Print all files with starting with ‘sd’ name in /dev directory

#!/bin/bash

while [ 1 ]; do
	echo "Enter 1 to print List of PCI Cards"
	echo "Enter 2 to print Logs"
	echo "Enter 3 to print Connected USB Devices"
	echo "Enter 4 to print Files starting with 'sd' in /dev"
	echo "Enter 5 to EXIT"

	read choice

	case $choice in
		
		1) lspci
		   ;;
		
		2) dmesg
		   ;;
		
		3) lsusb
		   ;;
		
		4) cd /dev;ls sd*
		   ;;
	esac
	
	if [ $choice -eq 5 ]; then
		break
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Write a menu driven script to do following task:
#   a)Update your repositories and write output in a file (Don’t upgrade.It might few minutes wait for that)
#   b)Install screenfetch
#   c)Run screenfetch
#   d)Ask user for his favorite movies
#   e)Store movies in file
#   f)Search for movies from file having substring given by user 

#!/bin/bash

while [ 1 ]; do
	echo "Enter 1 to Update Repositories" 
	echo "Enter 2 to Install screenfetch"
    	echo "Enter 3 to Run screenfetch"
    	echo "Enter 4 to print Favorite Movies"
    	echo "Enter 5 to Store Movies in File"
    	echo "Enter 6 to Search Movie in Movies File"
	echo "Enter 7 to Exit"

	read choice

	case $choice in
		
		1) sudo apt update
		   ;;
		
		2) sudo apt install screenfetch
		   ;;
		
		3) screenfetch
		   ;;
		
		4) echo "Enter your favorite Movies"
		   cat > favMovies.txt
		   ;;
		
		5) echo "Enter the name of the File"
		   read fileName
		   
		   mv favMovies.txt $fileName
		   ;;
		
		6) echo "Enter the name of the Movie"
		   read str
		   
		   grep $str $fileName
		   ;;
	esac
	
	if [ $choice -eq 7 ]; then
		break
done

----------------------------------------------------------------------
----------------------------------------------------------------------
