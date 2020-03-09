#include<iostream>

using namespace std;

int main()
{
	int i, j, N, temp, valInd;

	cout << "Enter the number of elements\n";

	cin >> N;

	int arr[N];

	cout << "\nEnter the elements of the array\n";

	for(i = 0 ; i < N ; ++i)
	{
		cin >> arr[i];
	}

	cout << "\nArray before sorting\n";

	for(i = 0 ; i < N ; ++i)
	{
		cout << arr[i] << "\t";
	}

	cout << "\nArray sorted in Ascending Order\n";

	for(i = 0 ; i < (N - 1) ; ++i)
	{
		valInd = i;

		for(j = (i + 1) ; j < N ; ++j)
		{
			if(arr[j] < arr[valInd])
			{
				valInd = j;
			}
		}

		temp = arr[i];
		arr[i] = arr[valInd];
		arr[valInd] = temp;
	}
	
	for(i = 0 ; i < N ; ++i)
	{
		cout << arr[i] << "\t";
	}

	cout << "\nArray sorted in Descending Order\n";
	
	for(i = 0 ; i < (N - 1) ; ++i)
	{
		valInd = i;

		for(j = (i + 1) ; j < N ; ++j)
		{
			if(arr[j] > arr[valInd])
			{
				valInd = j;
			}
		}

		temp = arr[i];
		arr[i] = arr[valInd];
		arr[valInd] = temp;
	}

	for(i = 0 ; i < N ; ++i)
	{
		cout << arr[i] << "\t";
	}

	return 0;
}
