#1. Do the following operation using command:
#   a) Start browser
#   b) Find pid of browser
#   c) Kill the browser process with 9 signal

#!/bin/bash

echo "Starting Browser"
sensible-browser

pId=`pidof chrome`
echo "PID of Browser is $pId"

echo "Killing Browser"
kill -9 $pid

----------------------------------------------------------------------
----------------------------------------------------------------------

#2. Monitor all process(use top command)

#!/bin/bash

top

----------------------------------------------------------------------
----------------------------------------------------------------------

#3. Check all process running on current terminal

#!/bin/bash

ps T

----------------------------------------------------------------------
----------------------------------------------------------------------

#4. Check all process running on your PC

#!/bin/bash

ps aux

----------------------------------------------------------------------
----------------------------------------------------------------------

#5. Write a script to perform the following
#   a) To count no.of processes which are running or ready in the system
#      (Hint:- ps -e -o pid,ppid,cmd,stat, grep ) 
#   b) List out foreground processes running in the system
#      (ps suffix + in the state for the foreground processes)

#!/bin/bash

echo "Processes Running: `ps -eo pid,user,stat,comm | wc -l`"
echo "Foreground Processes: `ps aux | grep R+ | wc -l`"

----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Do the following operation:
#   a) Start browser
#   b) Kill process by name(use pkill)
#   c) Kill all Terminal window 

#!/bin/bash

echo "Starting Browser"
sensible-browser

sleep 5

echo "Killing Process by Name"
killall -9 chrome

echo "Killing all Terminal Windows"
killall -9 `ps aux | grep gnome-terminal | awk '{print $11}'`

----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Write a program to create two threads:
#   a) First thread will print table of 2
#   b) Second thread will print table of 3
#   c) Main thread will wait for these thread to join

#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

void *printTables(void* arg)
{	
	int *num_ptr = (int *)arg;
	int num = *num_ptr;
	
	for(int i = 1 ; i <= 10 ; ++i)
	{
		printf("%d * %d = %d\n", num, i, (num*i));
	}
	
	pthread_exit(0);
}

int main(int argc, char **argv)
{	
	int num_args = (argc - 1);

	pthread_t tId[num_args];

	for(int i = 0 ; i < num_args ; ++i)
	{
		int N = atoi(argv[i]);
		pthread_attr_t attr;
		pthread_attr_init(&attr);
	
		pthread_create(&tId[i], &attr, printTables, &N);
	}
	
	for(int i = 0 ; i < num_args ; ++i)
		pthread_join(tId[i], NULL);
}

----------------------------------------------------------------------
----------------------------------------------------------------------

#8. Write a program to create three threads(One main thread ,other two threads):
#   a) Create a global variable ‘count’
#   b) Increment ‘count variable in two threads inside loops
#   c) Analyze the behaviour(Try Large number if Iterations in threads)

#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

int count = 0;

void *incrementCount(void *arg)
{
	for(int i = 0 ; i < 10 ; ++i)
		++count;
		
	pthread_exit(0);	
}

int main(int argc, int **argv)
{
	int num_args = 2;
	
	pthread_t tId[num_args];
	
	for(int i = 0 ; i < num_args ; ++i)
	{
		pthread_attr_t attr;
		pthread_attr_init(&attr);
		
		pthread_create(&tId[i], &attr, incrementCount, NULL);
	}
	
	for(int i = 0 ; i < num_args ; ++i)
		pthread_join(tId[i], NULL);
	
	printf("The value of count is : %d\n", count);
}

----------------------------------------------------------------------
----------------------------------------------------------------------
