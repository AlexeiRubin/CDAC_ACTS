#include<stdio.h>
#include<stdlib.h>

void highestFreq(int arr[], int size)
{
	int i, j, freq, pos, maxFreq = 0, finalPos;

	for(i = 0 ; i < size ; ++i)
	{
		freq = 0;
		for(j = 0 ; j < size ; ++j)
		{
			if(arr[i] == arr[j])
			{
				++freq;
				pos = i;
			}
		}

		if(freq > maxFreq)
		{
			maxFreq = freq;
			finalPos = pos;
		}
	}

	printf("Highest Frequency is of %d\n", arr[finalPos]);

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
	
	highestFreq(arr, N);
	
	return 0;
}
