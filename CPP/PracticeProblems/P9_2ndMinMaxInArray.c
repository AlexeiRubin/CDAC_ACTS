#include<stdio.h>
#include<stdlib.h>

void secondMinMax(int arr[], int size)
{
	int i, minF, minS, maxF, maxS;
	
	minF = maxF = arr[0];

	minS = minS = arr[0];

	for(i = 0 ; i < size ; ++i)
	{
		if( arr[i] < minF)
		{
			minS = minF;
			minF = arr[i];
		}

		if( (arr[i] < minS) && (arr[i] != minF) )
		{
			minS = arr[i];
		}
		
		if( arr[i] > maxF)
		{
			maxS = maxF;
			maxF = arr[i];
		}

		if( (arr[i] > maxS) && (arr[i] != maxF) )
		{
			maxS = arr[i];
		}
	}

	printf("2nd Min is: %d\t 2nd Max is: %d\n", minS, maxS);

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
	
	secondMinMax(arr, N);
	
	return 0;
}
