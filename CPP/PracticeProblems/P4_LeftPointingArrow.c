#include <stdio.h>

void leftPointingArrow(int N)
{
	int i, j, k;

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < (N - i - 1) ; ++j)
		{
			printf(" ");
		}
			
		for(k = 0 ; k <= i ; ++k)
		{
			printf("1");
		}

		printf("\n");
	}

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j <= i ; ++j)
		{
			printf(" ");
		}

		for(k = (N - i - 1) ; k > 0 ; --k)
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
  
    leftPointingArrow(N);
  
    return 0;
}
