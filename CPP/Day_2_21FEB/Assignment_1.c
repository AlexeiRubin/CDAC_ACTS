#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int compareWords(const void *a, const void *b)
{
	return strcmp(*(const char **)a, *(const char **)b);
}

int compareCharsInWords(const void *a, cont void *b)
{
	
}

int main()
{
	int i, n;
	
	printf("Enter Number of Strings\n");
	
	scanf("%d", &n);

	char **p = (char**)malloc(n*sizeof(char*));

	for(i = 0 ; i < n ; ++i)
	{
		p[i] = (char*)malloc(40*sizeof(char));
	}

	printf("Enter the Strings\n");
	
	for(i = 0 ; i < n ; ++i)
	{
		scanf("%s", p[i]);
	}

	printf("Strings Before qSort on Words\n");

	for(i = 0 ; i < n ; ++i)
	{
		printf("%s\t", p[i]);
	}

	printf("\n");
	
	qsort(p, n, sizeof(char*), compareWords);

	printf("Strings After qSort on Words\n");

	for(i = 0 ; i < n ; ++i)
	{
		printf("%s\t", p[i]);
	}

	printf("\nStrings Before qSort on CharsInWords\n");

	for(i = 0 ; i < n ; ++i)
	{
		printf("%s\t", p[i]);
	}

	printf("\n");

	//qsort statement here

	printf("Strings After qSort on CharsInWords\n");

	for(i = 0 ; i < n ; ++i)
	{
		printf("%s\t", p[i]);
	}
		
	printf("\n");

	return 0;
}
