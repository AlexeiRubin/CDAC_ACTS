#1. Write a shell script to rename all files in the current directory with numeric continuous value.
#   (Warning: Do this in a personal folder. Don't use Home directory)

#!/bin/bash

n=0
list=`ls test`

for i in $list; do
	mv $i $((n=$n+1))
done

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Write a shell script to count words in the given file(pass filename as command line argument. Use wc command).
#   If file is not there create it and ask for content of file then save it.

#!/bin/bash

if [ -f $1 ]; then
	wordCount=`wc -w $1 | cut -d " " -f1`
	echo "The word count of $1 is : $wordCount"
else
	echo "File named $1 does not Exist, Creating New File named $1"
	cat > $1
	
	wordCount=`wc -w $1 | cut -d " " -f1`
	echo "The word count of $1 is : $wordCount"
fi

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Write a script that print environment variable(Print $HOME,$PATH,$SHELL,$HISTORY,$LOGNAME,$TERM)

#!/bin/bash

env | grep ^HOME
env | grep ^PATH
env | grep ^SHELL
env | grep ^HISTORY
env | grep ^LOGNAME
env | grep ^TERM

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Write a shell script that continuously print the system load and free memory.
#   (Use free command for free memory and read file /proc/loadavg for system load).
#   Print value after 5 sec(Use sleep command)

#!/bin/bash

while [ 1 ]; do
	echo "FREE MEMORY"
	free
	echo "SYSTEM LOAD"
	cat /proc/loadavg
	sleep 5
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Write a file manager shell script(create function for each operation):
#   a) Create file
#   b) Create directory
#   c) Delete file
#   d) Delete directory
#   e) List content of current directory
#   f) change directory
#   g) cat file content
#   h) add content to a file


#!/bin/bash

CreateFile()
{
	echo "Enter the name of the File"
	read fileName

	if [ -f $fileName ]; then
		echo "File named $fileName Already Exits"
	else	
		touch $fileName
		echo "File named $fileName Created"
	fi
}

CreateDirectory()
{
	echo "Enter the name of the Directory"
	read dirName

	if [ -d $dirName ]; then
		echo "Directory named $dirName Already Exists"
	else	
		mkdir $dirName
		echo "Directory named $dirName Created"
	fi
}

DeleteFile()
{
	echo "Enter the name of the File"
	read fileName

	if [ -f $fileName ]; then
		rm $fileName
		echo "File named $fileName Deleted"
	else
		echo "File named $fileName does NOT exist"
	fi
}

DeleteDirectory()
{
	echo "Enter the name of the Directory"
	read dirName

	if [ -d $dirName ]; then
		rm -r $dirName
		echo "Directory $dirName Deleted"
	else
		echo "Directory named $dirName does NOT exist"
	fi	
}

List()
{
	echo "Listing the contents of Current Directory:"
	ls ./
}

ChangeDirectory()
{
	echo "Enter the Path of the Directory"
	read dirPath
	cd $dirPath
	echo "You are now in `pwd` "
}

ViewFile()
{
	echo "Enter the name of the File"
	read fileView
	
	if [ -f $fileView ]; then
		cat $fileView
	else
		echo "File named $fileView does NOT exist"
	fi	
}

AppendFile()
{
	echo -n "Enter File Name: "
	read fileAppend

	if [ -f $fileAppend ]; then
		echo "Add Content to File"
		cat >> $fileAppend
	else
		echo "File named $fileAppend does NOT exist"
	fi	
}

while [ 1 ]; do
	echo "Enter 1 to Create a File"
	echo "Enter 2 to Create a Directory"
	echo "Enter 3 to Delete a File"
	echo "Enter 4 to Delete a Directory"
	echo "Enter 5 to List the contents of Current Directory"
	echo "Enter 6 to Change Directory"
	echo "Enter 7 to View a File's Content"
	echo "Enter 8 to Add Content to a File"
	echo "Enter 9 to EXIT"

	read choice
	case $choice in

		1) CreateFile
		   ;;
		
		2) CreateDirectory
		   ;;
		
		3) DeleteFile
		   ;;
		
		4) DeleteDirectory
		   ;;
		
		5) List
		   ;;
		
		6) ChangeDirectory
		   ;;
		
		7) ViewFile
		   ;;
		
		8) AppendFile
		   ;;
	esac
	
	if [ $choice -eq 9 ]; then
		break
done	

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Write a system monitor script to print load average of cpu.
#   (Use /proc/loadavg file. Print value continuously every 3 second)
#   (If you want to replace current line value you can use the following syntax  echo -ne `command`\\r\\n .
#   Here \r carriage return will move cursor back and -n will not let it add newline)

#!/bin/bash

while [ 1 ]
do
	echo "CPU LOAD AVERAGE"
	cat /proc/loadavg
	echo -ne `sleep 3`\\r\\n
done

----------------------------------------------------------------------
----------------------------------------------------------------------
