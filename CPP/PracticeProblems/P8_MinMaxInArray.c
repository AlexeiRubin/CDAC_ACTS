#include<stdio.h>
#include<stdlib.h>

void minMax(int arr[], int size)
{
	int i, min, max;
	
	min = max = arr[0];

	for(i = 0 ; i < size ; ++i)
	{
		if( arr[i] < min)
		{
			min = arr[i];
		}
		
		if( arr[i] > max)
		{
			max = arr[i];
		}
	}

	printf("Min is: %d\t Max is: %d\n", min, max);

}

int main()
{
	int i, N;

	printf("Enter the Size\n");

	scanf("%d", &N);

	int arr[N];

	printf("Enter the Elements of the Array\n");

	for(i = 0 ; i < N ; ++i)
	{
		scanf("%d", &arr[i]);
	}
	
	minMax(arr, N);
	
	return 0;
}
