#include <stdio.h>

void Rhombus(int N)
{
	int i, j, k;

	for(i = 1 ; i < N ; ++i)
	{
		for(j = (N - i) ; j >= 0 ; --j)
		{
			printf(" ");
		}

		for(k = 1 ; k <= (2*i - 1) ; ++k)
		{
			printf("1");
		}

		for(j = (N - i) ; j >= 0 ; --j)
		{
			printf(" ");
		}

		printf("\n");
	}

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j <= i ; ++j)
		{
			printf(" ");
		}

		for(k = 1 ; k <= (2*(N - i) - 1) ; ++k)
		{
			printf("1");
		}

		for(j = 0 ; j <= i ; ++j)
		{
			printf(" ");
		}

		printf("\n");
	}
}

int main()
{
	int N;
  
    printf("Enter the Number\n");
  
    scanf("%d", &N);
  
    Rhombus(N);
  
    return 0;
}
