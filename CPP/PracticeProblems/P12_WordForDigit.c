#include<stdio.h>
#include<stdlib.h>

void wordForDigit(int num)
{
	int r, revNum = 0;

	while(num > 0)
	{
		r = (num % 10);

		revNum = revNum*10 + r;

		num /= 10;
	}

	while(revNum > 0)
	{
		r = (revNum % 10);

		revNum /= 10;
	}
	// switch case here
}

int main()
{
	int N;

	printf("Enter the Number\n");

	scanf("%d", &N);

	wordForDigit(N);

	return 0;
}
