#include<iostream>

using namespace std;

const int MAX = 100;

int arr[MAX];

void find(int a[], int n)
{
	int I;
	while(I < MAX)
	{
		if(a[I] == n)
		{
			cout << "no.found\n";
		}
		I++;
	}
}

void read(int ni)
{
	int i;
	do
	{
		if(ni <= 100)
		{
			for(i = 0 ; i < ni ; i++)
			{	
				cin >> arr[i];
			}
		}
		
	}while(i != ni);
}

void print(int a[], int n)
{
	int I = 0;
	while(I < n)
	{
		
		cout << a[I];
		
		I++;
	}
}

int main()
{
	int no, choice, nof;

	do
	{
		cout << "enter how namy numbers\n";
		cin >> no;

	}while(no <= 0);

	read(no);
	
	do
	{
		cout << "Enter the choice\n";

		cout << "\nEnter 1 for print\n";
		cout << "Enter 2 for find\n";

		cout << "Enter -1 for exit\n";
		cin >> choice;
		
		switch(choice)
		{	
			case 1:	
					print(arr, no);
					break;
			case 2:
					cout << "\nEnter no to find\n";
					cin >> nof;

					find(arr, nof);
					break;
			case -1:
					cout << "exiting the program\n";
					break;
			default:
					cout << "You have entered an invalid choice\n";
					break;
		}

	} while(choice != -1);

	cout<<"you are out of the program\n";

	return 0;
}
