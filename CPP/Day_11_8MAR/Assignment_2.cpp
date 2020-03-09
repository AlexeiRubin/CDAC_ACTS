#include<iostream>

using namespace std;

void SoE(int arr[], int N)
{
	int i, j, k;

	for(i = 2, k = 0 ; i < N ; ++i, ++k)
	{
		for(j = (k + 1) ; j < N ; ++j)
		{
			if(arr[j] == 0)
				continue;

			if( (arr[j] % i) == 0 )
				arr[j] = 0;
		}
	}
	
	cout << "\nPrime Numbers less than N are : ";

	for(int i = 0 ; i < N ; ++i)
	{
		if(arr[i] != 0)
			cout << arr[i] << "\t";
	}

	cout << endl;

}

int main()
{
	int N, i;

	cout << "Enter the value of N\n";

	cin >> N;
	
	int arr[N];
	
	for(i = 0 ; i < N ; ++i)
		arr[i] = (i + 2);

	SoE(arr, N);

	return 0;
}
