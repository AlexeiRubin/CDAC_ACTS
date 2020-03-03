#include<stdio.h>
#include<stdlib.h>

void palindromeNumber(int num)
{
	int temp, revNum = 0, r;

	temp = num;

	while(num > 0)
	{
		r = (num % 10);

		revNum = revNum*10 + r;

		num /= 10;
	}

	if(temp == revNum)
	{
		printf("The Number %d is a Palindrome\n", temp);
	}
	else
	{
		printf("The Number %d is NOT a Palindrome\n", temp);
	}
}

int main()
{
	int N;

	printf("Enter the Number\n");

	scanf("%d", &N);

	palindromeNumber(N);
	
	return 0;
}
