#include <stdio.h>

void rightPointingArrow(int N)
{
	int i, j;

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j <= i ; ++j)
		{
			printf("1");
		}

		printf("\n");
	}

	for(i = 0 ; i <= N ; ++i)
	{
		for(j = N ; j >= i ; --j)
		{
			printf("1");
		}

		printf("\n");
	}
}

int main()
{
	int N;
  
    printf("Enter the Number\n");
  
    scanf("%d", &N);
  
    rightPointingArrow(N);
  
    return 0;
}
