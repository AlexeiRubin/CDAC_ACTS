#include<iostream>

using namespace std;

void swap(int *a, int *b)
{
	int temp = *a;
	*a = *b;
	*b = temp;
}

int partition(int arr[], int low, int high)
{
	int pivot = arr[high];
	int i = (low - 1);
	
	for(int j = low ; j <= high ; ++j)
	{
		if(arr[j] < pivot)
		{
			++i;
			swap(&arr[i], &arr[j]);
		}
	}
	swap(&arr[i + 1], &arr[high]);
	return (i + 1);
}

void quickSort(int arr[], int low, int high)
{
	if(low < high)
	{
		int pi = partition(arr, low, high);
		
		quickSort(arr, low, (pi - 1));
		quickSort(arr, (pi + 1), high);
	}
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

	quickSort(arr, 0, (N - 1));

	cout << "\nThe Sorted Array is : ";
	
	for(i = 0 ; i < N ; ++i)
		cout << arr[i] << "\t";

	cout << endl;

	return 0;
}
