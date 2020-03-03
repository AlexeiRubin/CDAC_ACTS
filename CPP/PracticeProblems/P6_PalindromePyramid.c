#include <stdio.h>

void palindromePyramid(int N)
{
	int i, j, k, key;

	for(i = 1 ; i < N ; ++i)
	{
		key = 1;

		for(j = (N - i) ; j >= 0 ; --j)
		{
			printf(" ");
		}

		for(k = 1 ; k <= (2*i - 1) ; ++k)
		{
			printf("%d", key);
			
			if(k < ( (2*i) / 2) )
			{
				++key;
			}
			
			else if(k >= ( (2*i) / 2) )
			{
				--key;
			}
		}

		for(j = (N - i) ; j >= 0 ; --j)
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
  
    palindromePyramid(N);
  
    return 0;
}
