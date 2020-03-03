#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
	int size, count = 0;
	char buffer[1024];

	printf("Enter Text\n");

	scanf("%s", buffer);
	
	size = strlen(buffer);

	char *p = (char*)malloc(size*sizeof(char));

	for(int i = 0 ; i < size ; ++i)
	{
		if( (*(p+i) == 32))
		{
			++count;
		}
	}
	
	printf("%d\n", count);

	free(p);

	return 0;
}
