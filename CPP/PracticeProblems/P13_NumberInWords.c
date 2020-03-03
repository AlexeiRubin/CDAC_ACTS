#include<stdio.h>
#include<stdlib.h>

void numberInWords(int r, int n)
{
	switch(r)
	{
		case 1: printf("one--");
			break;
		case 2: printf("two--");
			break;
		case 3: printf("three--");
			break;
		case 4: printf("four--");
			break;
		case 5: printf("five--");
			break;
		case 6: printf("six--");
			break;
		case 7: printf("seven--");
			break;
		case 8: printf("eight--");
			break;
		case 9: printf("nine--");
			break;
	}
	
	switch(n)
	{
		case 2: if(r == 1)
				
			break;
		case 3: printf("hundred ");
			break;
		case 4: printf("thousand ");
			break;
		case 5: printf("ten thousand ");
			break;
		case 6: printf("hundred thousand ");
			break;
		case 7: printf("million ");
			break;
		case 8: printf("ten million ");
			break;
		case 9: printf("hundred million ");
			break;
		case 10: printf(" billion ");
			break;
	}
}

void numberSplitter(int num)
{
	int r, count = 0, revNum = 0;

	while(num > 0)
	{
		r = (num % 10);
		
		revNum = (revNum*10) + r;

		num /= 10;

		++count;
	}

	while(revNum > 0)
	{
		r = (revNum % 10);

		numberInWords(r, count);

		revNum /= 10;
		
		--count;
	}
}

int main()
{
	int N;

	printf("Enter the Number\n");

	scanf("%d", &N);

	numberSplitter(N);

	return 0;
}
