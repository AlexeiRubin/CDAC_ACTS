#include<iostream>

using namespace std;

void ProcessArray(int *p, int N, void (*pfns)(int *))
{
	int i = 0;

	for(i = 0 ; i < N ; ++i)
	{
		(*pfns)(p+i);
	}
}

void RemoveOdd(int *e)
{
	if( (*e%2) != 0 )
		*e = 0;
}

void RemoveEven(int *e)
{
	if( (*e%2) == 0 )
		*e = 0;
}

void RemoveNegative(int *e)
{
	if( *e < 0 )
		*e = 0;
}

void RemovePositive(int *e)
{
	if( *e >= 0 )
		*e = 0;
}

int main()
{
	int i, N, choice;

	cout << "Enter the size of the Array\n";

	cin >> N;

	int *arr = (int *) malloc(N*sizeof(int));

	cout << "Enter the elements of the array\n";

	for(i = 0 ; i < N ; ++i)
	{
		cin >> *(arr + i);
	}

	void (*pfns[4])(int *) = {RemoveOdd, RemoveEven, RemoveNegative, RemovePositive};

	cout << "Enter 1 to Remove ODD\n";
	cout << "Enter 2 to Remove EVEN\n";
	cout << "Enter 3 to Remove NEGATIVE\n";
	cout << "Enter 4 to Remove POSITIVE\n";
	cout << "Enter 5 to EXIT\n";

	cin >> choice;

	--choice;

	ProcessArray(arr, N, *pfns[choice]); 
	
	cout <<"Printing the array\n";

	for(i = 0 ; i < N ; ++i)
	{
		cout << *(arr + i) << "\t";
	}

	return 0;
}
