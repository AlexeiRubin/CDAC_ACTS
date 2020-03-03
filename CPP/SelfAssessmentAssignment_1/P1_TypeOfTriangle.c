#include<stdio.h>
#include<math.h>

void triangleTypeCheck(double a, double b, double c)
{
	if( !((a+b) > c) || !((b+c) > a) || !((a+c) > b) )
	{
		printf("Invalid\n");
	}
	else if( (a == b) && (b == c) )
	{
		printf("Equilateral Triangle\n");
	}
	else if( (a != b) && (a != c) && (b != c) )
	{
		if( (a / (c-b)) == ((c+b) /a ))
     	{
          printf("Right Angled Triangle\n");
      	}
		else
		{
			printf("Not Special\n");
		}
	}
	else if( (a == b) || (a == c) || (b == c) )
	{
		printf("Isosceles Triangle\n");
	}
	else
	{
		printf("Not Special\n");
	}

}

int main()
{
	double a, b, c;
	printf("Enter the Sides of the Triangle\n");

	scanf("%le %le %le", &a, &b, &c);
	
	triangleTypeCheck(a, b, c);

	return 0;
}
