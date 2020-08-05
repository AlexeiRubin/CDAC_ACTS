#1. Create some files and sub directories.
#   a) display files row wise, column wise, 1 per row
#   b) sort the files in ascending, descending order
#   c) Create some hidden files and sub directories and display them using “ls -a”
#   d) Change time stamp of some files and directories using touch command and display the files using ls -t ls -rt
#   e) Recursive display contents of your home directory.
#   f) display all attributes of files and directories using ls -l
#   g) display attributes of a directory using ls -ld

A)

~$
~$
~$ls -1
displays 1 per row
~$
~$

-----------------------------------
-----------------------------------

B)

~$
~$
~$ls -l
ascending order
~$
~$
~$ls -ltr
descending order
~$
~$

-----------------------------------
-----------------------------------

C)

~$
~$
~$touch .abc .tuv
~$
~$
~$ls -a
~$
~$

-----------------------------------
-----------------------------------

D)

~$
~$
touch -d "2020-10-20 12:12:12.000000000 +0530" file1.txt
~$
~$

-----------------------------------
-----------------------------------

E)

~$
~$
~$ls -R
~$
~$

-----------------------------------
-----------------------------------

F)

~$
~$
~$ls -l
~$
~$

-----------------------------------
-----------------------------------

G)

~$
~$
~$ls -ld
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Create three directory a b and c and create a.txt,b.txt and c.txt in each directory respectively and then copy c directory into the a.

~$
~$
~$mkdir A B C
~$ls
A B C
~$
~$
~$cd A
~A/$ touch A.txt
~A/$ ls
A.txt
~A/$
~A/$
~A/$cd ..
~$
~$
~$cd B
~B/$ touch B.txt
~B/$ ls
B.txt
~B/$
~B/$
~B/$cd ..
~$
~$
~$cd C
~C/$ touch C.txt
~C/$ ls
C.txt
~C/$
~C/$
~C/$cd ..
~$
~$
~$mv C A
~$
~$
~$cd A
~A/$cd ls
A.txt C
~A/$
~A/$
~A/$cd ..
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Move Directory b to c.

~$
~$
~$mv B A/C
~$
~$
~$cd A/C
~A/C/$
~A/C/$
~A/C/$ls
c.txt B
~A/C/$
~A/C/$
~A/C/$cd ~
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Create alias of ls -lh command to your name.

~$
~$
~$alias LOL="ls -lh"
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Change Directory name a to cdac.

~$
~$
~$mv A D
~$ls
B C D
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Create five files file1.txt , file2.txt ,file3.txt file4.txt and file5.txt with some text inside it.
#   Search for 's' character inside all the files using grep command.
#   Also Use cat to view all file content together.

~$
~$
~$touch file1.txt file2.txt file3.txt file4.txt
~$
~$
~$vi file5.txt
//vi editor opens
Yo What's up?
esc:wq
~$
~$
~$grep s file1.txt file2.txt file3.txt file4.txt file5.txt
output
~$
~$
~$cat file1.txt file2.txt file3.txt file4.txt file5.txt
Yo What's up?
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Create file.txt using cat and edit that using nano editor.

~$
~$
~$cat > file.txt
//write to file is on terminal itself
Yo what's op?
//ctrl + d to quit
~$
~$
~$nano file.txt
//nano editor opens
Yo what's up?
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#8. Create 5 empty files using touch command.

~$
~$
~$touch 1.txt 2.txt 3.txt 4.txt 5.txt
~$ls
1.txt 2.txt 3.txt 4.txt 5.txt
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#9. Remove previously created directory a , b and c.

~$
~$
~$rm -r A B C
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#10. Create a file with some content using vi editor
#    a) Display the file using cat command
#    b) Display line no.s along with content
#    c) Display the file in reverse order using tac
#    d) Combine multiple files using cat command

A)

~$
~$
~$cat > file1.txt
Yo wazzup?
~$
~$
~$cat file.txt
Yo wazzup?
~$
~$

-----------------------------------
-----------------------------------

B)

~$
~$
~$cat -n file1.txt
~$
~$

-----------------------------------
-----------------------------------

C)

~$
~$
~$tac file1.txt
~$
~$

-----------------------------------
-----------------------------------

D)

~$
~$
~$cat file1.txt file2.txt file3.txt >> file4.txt
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------