#1. Write a shell script to append the numbers in all filenames of current directory.
#   (Don’t use home directory.)

#!/bin/bash

list=`ls`
num=0

for i in $list; do
	mv $i $i$((num=$num+1))
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a menu driven script:
#	a) Store student name in array
#	b) Search name in array
#	c) Search by first name

#!/bin/bash

StoreName()
{
	echo "Enter the name of the Student"
	read name

	for i in "${StudentName[@]}"; do
		if [ $i = $Sname ]; then
			echo "Student Name Already Exists"
			return
		fi
	done

	StudentName+=("$Sname")
}

SearchName()
{
	echo "Enter the name of the Student"
	read name
	
	for i in "${StudentName[@]}"; do
		if [[ "$i" == "$name" ]]; then
			echo "$name Found"
			return
		fi
	done
	
	echo "$name NOT Found"
}

SearchFirstName()
{
	echo "Enter the First name of the Student"
	read firstNameSrch
	
	for i in "${StudentName[@]}"; do
		firstName=`echo $i | cut -d " " -f1`

		if [ $firstName = $firstNameSrch ]; then
			echo "First Name Found"
			return
		fi
	done

	echo "First Name NOT Found"
}

declare -a StudentName
while [ 1 ]; do
	echo "Enter 1 to Store Student Name"
	echo "Enter 2 to Search Student Name"
	echo "Enter 3 to Search Student by First Name"
	echo "Enter 4 to EXIT"

	read choice

	case $choice in

		1) StoreName
		   ;;
		
		2) SearchName
		   ;;
		
		3) SearchFirstName
		   ;;
	esac
	
	if [ $choice -eq 4 ]; then
		break
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Write a menu driven script shell script that will:
#	a) print cpu information(read file /proc/cpuinfo)
#	b) print user details such as uid,gid,username,groups,home directory,
#	   default shell and his encrypted password(you can use uid,gid,groups commands
#	   and print $HOME,$SHELL or try finding in /etc/passwd and /etc/shadow)


#!/bin/bash

CPUInfo()
{
	cat /proc/cpuinfo
}

UserDetails()
{
	userName=`who am i`
	echo "USERNAME: $userName"
	echo "UID: `id -u $userName`"
	echo "GID: `id -g $userName`"
	echo "GROUPS: `groups $userName | cut -d ":" -f2`"
	echo "HOME DIRECTORY: $HOME"
	echo "DEFAULT SHELL: $SHELL"
	echo "ENCRYPTED PASSWORD: `sudo grep ^$userName /etc/shadow | cut -d ":" -f2`"
}

while [ 1 ]; do
	echo "Enter 1 to print CPU Information"
	echo "Enter 2 to print User Details"
	echo "Enter 3 to EXIT"

	read choice

	case $choice in

		1) CPU
		   ;;
		
		2) User
		   ;;
	esac
	
	if [ $choice -eq 3 ]; then
		break
done
	
----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Write a shell script to print all files permissions in current directory.
#   (Not name or other details)
#   (Use cut commands)


#!/bin/bash

ls -l ./ | sed '1d' | cut -d " " -f1

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Write a shell script to print all files permissions and name of file.

#!/bin/bash

ls -l ./ | sed '1d' | awk '{print $1,$9}'

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Write a shell script to print all files name and size greater than 10K.

#!/bin/bash

find . -type f -size +10k -ls | awk '{print $11,$7}'

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Write a shell script to automate tasks:(It’s not menu driven. Follow operations in order)
#	a) Install wget
#	b) Download file https://www.kernel.org/doc/Documentation/switchtec.txt
#	c) open file with vi editor(Let user edit the file and save it)
#	d) Change all driver word occurrences with DRIVER word in above file
#	e) Print it on terminal(wait for user to enter q to exit it)
	
#!/bin/bash

echo "Installing wget"
sudo apt install wget

echo "Downloading File"
wget https://www.kernel.org/doc/Documentation/switchtec.txt


vi switchtec.txt

sed "s/driver/DRIVER/g" switchtec.txt

echo "Enter q to exit"

while read quit && [ $quit != 'q' ]; do
	continue
done	

----------------------------------------------------------------------
----------------------------------------------------------------------


OPTIONAL


#1. Write a shell script:
#	a) Download https://github.com/curran/data/blob/gh-pages/all/geonames_cities10000000.csv using curl command
#   	b) print name if population is greater than 12691835

----------------------------------------------------------------------
----------------------------------------------------------------------
