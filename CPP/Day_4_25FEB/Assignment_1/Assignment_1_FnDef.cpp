#include<iostream>

using namespace std;

#include "Assignment_1_Class.h"

void MatAdd :: read()
{
	int i, j;

	cout << "Enter the values of N & M\n";

	cin >> N >> M;

	cout << "Enter the First Matrix\n";

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < M ; ++j)
		{
			cin >> a[i][j];
		}
	}

	cout << "Enter the Second Matrix\n";
	
	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < M ; ++j)
		{
			cin >> b[i][j];
		}
	}
}

void MatAdd :: addMat(int N, int M)
{
	int i, j;

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < M ; ++j)
		{
			a[i][j] += b[i][j];
		}
	}
}

void MatAdd :: write(int N, int M)
{
	int i, j;
	
	cout << "The Resultant Matrix is :\n";

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < M ; ++j)
		{
			cout << a[i][j] << "\t";
		}
		cout << endl;
	}
}

