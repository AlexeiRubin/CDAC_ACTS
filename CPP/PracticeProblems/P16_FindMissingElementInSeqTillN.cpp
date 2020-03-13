#include<iostream>
#include<cmath>

using namespace std;

int main()
{
	int i, N, even = 0, odd = 0, diff = 0, mid = 0, res = 0, avgSum = 0;

	cout << "Enter the number of elements\n";
	cin >> N;

	int arr[N];

	cout << "Enter the elements \n";

	for(i = 0 ; i < N ; ++i)
	{
		cin >> arr[i];

		if( (arr[i] % 2) == 0)
			even += arr[i];
		
		else
			odd += arr[i];
	}

	if( (N % 2) == 0)
	{
		mid = (N / 2);
 
		diff = (even - odd);

		res = (mid - diff);

		cout << "Missing Number is : \t" << abs(res) << endl;
	}
	else
	{
		mid = (N / 2) + 1;
		
		diff = (odd - even);

		if(diff == 0)
		{
			cout << "Missing Number is : \t" << mid << endl; 
		}
		else
		{
			res = (mid - diff);
			cout << "Missing Number is : \t" << abs(res) << endl;
		}
	}

	return 0;
}
