#include<iostream>

using namespace std;

int inSort(int arr[], int N)
{
	int i, j, key;

	for(i = 1 ; i < N ; ++i)
	{
		key = arr[i];
		j = (i - 1);

		while( (j >= 0) && (arr[j] > key) )
		{
			arr[j + 1] = arr[j];
			--j;
		}
		arr[j + 1] = key;
	}

	cout << "\nArray in ascending order\n";

	for(i = 0 ; i < N ; ++i)
		cout << arr[i] << "\t";

	for(i = 1 ; i < N ; ++i)
	{
		key = arr[i];
		j = (i - 1);

		while( (j >= 0) && (arr[j] < key) )
		{
			arr[j + 1] = arr[j];
			--j;
		}
		arr[j + 1] = key;
	}

	cout << "\nArray in descending order\n";

	for(i = 0 ; i < N ; ++i)
		cout << arr[i] << "\t";

	cout << endl;
}

int main()
{
	int i, N;

	cout << "Enter the number of elements\n";
	cin >> N;

	int arr[N];

	cout << "\nEnter the elements of the array\n";
	
	for(i = 0 ; i < N ; ++i)
		cin >> arr[i];
	
	cout << "\nArray before sorting : ";

	for(i = 0 ; i < N ; ++i)
		cout <<  arr[i] << "\t";

	cout << endl;

	inSort(arr, N);

	return 0;
}
