#include<iostream>

using namespace std;

void bSort(int arr[], int N)
{
	int i, j, temp;

	for(i = 0 ; i < N ; ++i)
	{
		for(j = (i + 1) ; j < N ; ++j)
		{
			if(arr[i] > arr[j])
			{
				temp = arr[i];
				arr[i] = arr[j];
				arr[j] = temp;
			}
		}
	}

	cout << "\nArray in ascending order\n";
	for(i = 0 ; i < N ; ++i)
		cout << arr[i] << "\t";

	for(i = 0 ; i < N ; ++i)
	{
		for(j = (i + 1) ; j < N ; ++j)
		{
			if(arr[i] < arr[j])
			{
				temp = arr[i];
				arr[i] = arr[j];
				arr[j] = temp;
			}
		}
	}

	cout << "\n\nArray in descending order\n";
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
		cout << arr[i] << "\t";
	
	cout << endl;

	bSort(arr, N);
	
	return 0;
}
