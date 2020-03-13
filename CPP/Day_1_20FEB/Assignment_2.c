#include<stdio.h>
#include<stdlib.h>

int add(int *parg)
{
	int result = *(parg) + *(parg+1);

	return result;
}

int multiply(int *parg)
{
	int result = *(parg) * *(parg+1);

	return result;
}

int max1(int *parg)
{
	int a, b, c, max;

	a = *(parg);
	b = *(parg+1);
	c = *(parg+2);

	max = (a>b) ? (a>c) ? a : c : (b>c) ? b : c;
	
	return max;
}

int min1(int *parg)
{
	int a, b, c, min;

	a = *(parg);
	b = *(parg+1);
	c = *(parg+2);
	
	min = (a<b) ? (a<c) ? a : c : (b<c) ? b : c;
	
	return min;
}

int exitProcess()
{
	printf("Exiting the Program\n");

	exit(0);
	return 0;
}

int main()
{
	int choice = 0, result = 0, q;

	int (*pfns[5])() = {add, multiply, max1, min1, exitProcess};
	
	int *p = (int*)malloc(3 * sizeof(int));
	
	printf("\nenter 3 numbers\n");
	
	for(int i = 0 ; i<3 ; ++i )
	{
		scanf("%d", &q );
		*(p+i) = q;
	}

	while(1)
	{
		printf("\nEnter 1 for Addition\n");

		printf("Enter 2 for Multiplication\n");

		printf("Enter 3 for Finding Max\n");

		printf("Enter 4 for Finding Min\n");

		printf("Enter 5 for Exit\n");

		scanf("%d", &choice);
		
		--choice;
		
		result = (*pfns[choice])(p);

		printf("\nThe Result is %d\t", result);
	}
	
	free(p);
	free(*pfns);

	return 0;
}
