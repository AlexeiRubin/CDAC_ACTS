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



----------------------------------------------------------------------
----------------------------------------------------------------------

#6. Do the following operation:
#   a) Start browser
#   b) Kill process by name(use pkill)
#   c) Kill all Terminal window 



----------------------------------------------------------------------
----------------------------------------------------------------------

#7. Write a program to create two threads:
#   a) First thread will print table of 2
#   b) Second thread will print table of 3
#   c) Main thread will wait for these thread to join

#include<stdio.h>
#include<pthread.h>

void *printTables(void* arg)
{	
	for(int i = 1 ; i <= 10 ; ++i)
	{
		printf("%d * %d = %d\n", num, i, (num*i));
	}
	
	pthread_exit(0);
}

int main(int argc, char **argv)
{	
	int num_args = 2;

	pthread_ tId[num_args];

	for(int i = 0 ; i < num_args ; ++i)
	{
		pthread_attr_t attr;
		pthread_attr_init(&attr);
	
		pthread_create(&tId[i], &attr, printTables, NULL);
	}
		
	for(int i = 0 ; i < num_args ; ++i)
		pthread_join(tid[i], NULL);
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
	
	pthread_id tId[num_args];
	
	for(int i = 0 ; i < num_args ; ++i)
	{
		pthread_attr_t attr;
		pthread_attr_init(&attr);
		
		pthread_create(&tId[i], &attr, incrementCount, NULL);
	}
	
	for(int i = 0 ; i < num_args ; ++i)
		pthread_join(tId[i], NULL);
	
	printf("The value of count is : %d", count);
}

----------------------------------------------------------------------
----------------------------------------------------------------------