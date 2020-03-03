#include<stdio.h>
#include<stdlib.h>

void rightRotate(int arr[], int size, int K)
{
	int i, temp, pos;
	
	for(i = 0 ; i < size ; ++i)
	{
		pos = (i + K);
		temp = arr[i];
		
		if(pos >= size)
		{
			pos = ((i + K) % size);
		}
		arr[i] = arr[pos];
		arr[pos] = temp;
	}

	for(i = 0 ; i < size ; ++i)
	{
		printf("%d ", arr[i]);
	}

	printf("\n");
}

int main()
{
	int i, N, K;

	printf("Enter the Size\n");

	scanf("%d", &N);

	int arr[N];

	printf("Enter the Elements of the Array\n");

	for(i = 0 ; i < N ; ++i)
	{
		scanf("%d", &arr[i]);
	}

	printf("Enter the value of K\n");

	scanf("%d", &K);
	
	rightRotate(arr, N, K);
	
	return 0;
}
