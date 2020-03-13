#include<iostream>

#include "List.h"

using namespace std;

int main()
{
	int N;
	myList L;

	cout << "Enter the Size of the List\n";
	cin >> N;
	L.setListSize(N);

	L.createList(N);

	

	return 0;
}
