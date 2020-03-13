#include<stdio.h>
#include<stdlib.h>

int compareInt(const void *a,const void *b)
{
	return *(const int*)a-*(const int *)b;
}

int main()
{
	int arr[5];

	printf("Enter the array\n");

	for(int i = 0 ; i < 5 ; ++i)
	{
		scanf("%d", &arr[i]);
	}
	
	for(int i = 0 ; i < 5 ; ++i)
	{
		printf("%d\t", arr[i]);
	}
	printf("\n");
	qsort(arr,sizeof(arr)/sizeof(*arr),sizeof(*arr),compareInt);

	for(int i = 0 ; i < 5 ; ++i)
	{
		printf("%d\t", arr[i]);
	}
	return 0;
}
