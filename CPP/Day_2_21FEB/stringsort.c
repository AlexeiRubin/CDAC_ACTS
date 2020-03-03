#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int comparechar(const void *a, const void *b)
{
	return *(const char*) a - *(const char*)b;
}

int main()
{
	fflush(stdin);
	int n;

	printf("Enter the size of the string\n");

	scanf("%d", &n);

	//NOW allocate memory according to N

	char *p = (char *) malloc(n*sizeof(char)); // assign to char pointer which points to memblk

	//Take string input

	for(int i = 0 ; i <= n ; ++i)
	{
		scanf("%c", (p+i));
	}
	
	//Perform operations

	qsort(p, n, sizeof(char), comparechar);

	//PRINT the string
	
	for(int i = 0 ; i <= n ; ++i)
	{
		printf("%c", *(p+i));
	}
	
	printf("\n");

	free(p);

	return 0;
}
