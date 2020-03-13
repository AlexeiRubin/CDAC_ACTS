#include<stdio.h>
#include<stdlib.h>

void add()
{
	int a, b;
	
	printf("\nfor addition enter two numbers\n");
	
	int sn = scanf("%d %d",&a ,&b);
	
	if(sn != 2)
	{
		printf("\nerror! enter valid inputs\n");
	}

	int c;
	c = a + b;
	
	printf("%d\n", c);
}

void multiply()
{
	int a, b;
	
	printf("\nfor multiplication  enter two numbers\n");
	
	int sn = scanf("%d %d",&a, &b);
	
	if(sn != 2)
	{
		printf("\nerror! enter valid inputs\n");
	}

	int c;
	c = a * b;

	printf("%d\n", c);
}

void max1()
{
	int a, b, c, max;

	printf("\nfor finding min please enter 3 numbers\n");
	
	scanf("%d %d %d", &a, &b, &c);
	
	max = (a>b) ? (a>c) ? a : c : (b>c) ? b : c;
	
	printf("%d\n", max);
}

void min1()
{
	int a, b, c, min;

	printf("\nfor finding min  please enter 3 numbers\n")
	;
	scanf("%d %d %d", &a, &b, &c);
	
	min = (a<b) ? (a<c) ? a : c : (b<c) ? b : c;
	
	printf("%d\n", min);
}

void exitProcess()
{
	printf("Exiting The Program\n");

	exit(0);
}

int main()
{
	int choice = 0;

	void (*pfns[5])() = {add, multiply, max1, min1, exitProcess};

	while(1)
	{
		printf("\nEnter 1 for Addition\n");

		printf("Enter 2 for Multiplication\n");

		printf("Enter 3 for Finding Max\n");

		printf("Enter 4 for Finding Min\n");

		printf("Enter 5 for Exit\n");

		scanf("%d", &choice);
		
		--choice;
		
		(*pfns[choice])();
	}

	return 0;
}

