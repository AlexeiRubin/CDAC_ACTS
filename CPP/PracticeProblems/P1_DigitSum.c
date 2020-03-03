#include<stdio.h>

int digitSum(int num)
{
	int r, sum = 0;
	
	while(num > 0)
	{
		r = (num % 10);

		sum += r;

		num /= 10;
	}

	return sum;
}

int main()
{
	int N, result;

	printf("Enter the Number\n");

	scanf("%d", &N);

	result = digitSum(N);

	printf("%d\n", result);

	return 0;
}
