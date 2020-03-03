#include<stdio.h>
#include<stdlib.h>

int reverseNumber(int num)
{
	int revNum = 0, r;

	while(num > 0)
	{
		r = (num % 10);

		revNum = revNum*10 + r;

		num /= 10;
	}

	return revNum;
}

int main()
{
	int N, result;

	printf("Enter the Number\n");

	scanf("%d", &N);

	result = reverseNumber(N);

	printf("The Reverse Number is %d\n", result);
	
	return 0;
}
