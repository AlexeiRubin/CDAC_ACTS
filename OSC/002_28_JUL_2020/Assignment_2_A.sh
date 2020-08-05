#1. Create directory of your name and then create 4 files inside it named a.txt, b.txt, c.txt and d.sh.
#   And change the directory permission to only user and also files permission to only user such that
#   a) user can read and write the file a.txt and b.txt
#   b) user can write the file c.txt
#   c) user can exectuable the file d.sh.
#      Make
#      Contents of file d.sh:
#      /bin/sh
#      ls -lh

~$
~$
~$mkdir test
~$
~$
~$cd test
~test/$
~test/$
~test/$touch a.txt b.txt c.txt d.sh
~test/$
~test/$
~test/$vi d.sh
#/bin/sh
ls -lh
esc:wq
~test/$
~test/$
~test/$cd ..
~$
~$
~$chmod 700 test
~$
~$

A)

~test/$
~test/$
~test/$chmod 600 a.txt b.txt
~test/$
~test/$
~test/$ls -l
-rw------- 1 user user  0 Jul 28 05:56 a.txt
-rw------- 1 user user  0 Jul 28 05:56 b.txt
-rw-r--r-- 1 user user  0 Jul 28 05:56 c.txt
-rw-r--r-- 1 user user 16 Jul 28 05:57 d.sh
~test/$
~test/$

-----------------------------------
-----------------------------------

B)

~test/$
~test/$
~test/$chmod 200 c.txt
~test/$
~test/$
~test/$ls -l
-rw------- 1 user user  0 Jul 28 05:56 a.txt
-rw------- 1 user user  0 Jul 28 05:56 b.txt
--w------- 1 user user  0 Jul 28 05:56 c.txt
-rw-r--r-- 1 user user 16 Jul 28 05:57 d.sh
~test/$
~test/$

-----------------------------------
-----------------------------------

C)

Can be done by changing the permissions.
~test/$
~test/$
~test/$chmod 100 d.sh
~test/$
~test/$
~test/$ls -l
-rw------- 1 user user  0 Jul 28 05:56 a.txt
-rw------- 1 user user  0 Jul 28 05:56 b.txt
--w------- 1 user user  0 Jul 28 05:56 c.txt
---x------ 1 user user 16 Jul 28 05:57 d.sh
~test/$
~test/$

Other way is to just pass it as an argument to the shell.

~test/$bash d.sh

To exectute a file use : ./filename

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Change the permission of the previous directory to executable only.
#   Analyze the output.

~test/$
~test/$
~test/$cd ..
~$
~$
~$
~$chmod 100 test
~$
~$
~$ls -l
d--x------ 2 user user 6 Jul 28 05:57 test
~$
~$
~$cd test
~test/$
~test/$
~test/$ls
permission denied
~test/$
~test/$

So ls is not working but CD is working.

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Change the permission of the previous directory to read only.
#   Analyze the output.

~test/$
~test/$
~test/$cd ..
~$
~$
~$
~$chmod 400 test
~$
~$
~$ls -l
dr-------- 2 user user 6 Jul 28 05:57 test
~$
~$
~$cd test
permission denied
~$
~$
~$ls
Works Fine
~$
~$

So ls is working but CD is not working.

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Use echo to list the all files of your home directory.

~$
~$
~$echo *
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Use echo to list the all files of /etc/ directory

~$
~$
~$cd  /etc
~$
~$
~$echo *
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Use echo to list the all files of /etc/ directory with extension name .conf

~$
~$
~$cd  /etc
~$
~$
~$echo *.conf
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Use echo to append your name to a.txt

~$
~$
~$echo lol >> a.txt
~$
~$

> for output redirection (overwrites existing file as well)
>> for appending data to a file

----------------------------------------------------------------------
----------------------------------------------------------------------

#8. Use echo to list the files of /proc/

~$
~$
~$cd  /proc
~$
~$
~$echo *
~$
~$

----------------------------------------------------------------------
----------------------------------------------------------------------