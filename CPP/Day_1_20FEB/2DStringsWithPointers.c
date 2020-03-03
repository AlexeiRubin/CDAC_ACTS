#include<stdio.h>
#include<stdlib.h>

int main()
{
	char *str[5];
	char strarr[50][50];
	
	int n, i;
	
	printf("enter no.of strings\t");
	
	scanf("%d", &n);
	
	for(i = 0 ; i<n ; i++)
	{
		int siz;
		
		printf("\nenter size of %d string\t", i+1);
		
		scanf("%d", &siz);
		
		str[i] = (char*)malloc(siz*sizeof(char));
		
		if(str[i] == NULL)
		{
			printf("memory is full");
			exit(0);

		}

		printf("\nenter %d string\t", i+1);
		
		scanf("%s", strarr[i]);
		
		str[i] = &strarr[i][0];
	}
	
	for(i = 0 ; i<n ; i++)
	{
		printf("\n%d string is %s\n", i+1, str[i]);

	}

	return 0;
}
