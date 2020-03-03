#include<stdio.h>

void perfectNumbers(int num)
{
	int i, j, sum, count = 0;

	for(i = 2 ; i <= num ; ++i)
	{
		sum = 0;
		
		for(j = 1 ; j < num ; ++j)
		{
			if( (i % j) == 0)
			{
				sum += j;
			}
		}

		if(sum == i)
		{
			printf("\n%d is a Perfect Number\n", i);
			++count;
		}

		if(count == 4)
		{
			break;
		}
	}
}

int main()
{
	int N;

	printf("Enter the Number\n");

	scanf("%d", &N);

	perfectNumbers(N);

	return 0;
}
