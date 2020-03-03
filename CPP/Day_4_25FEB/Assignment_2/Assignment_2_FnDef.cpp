#include<iostream>

using namespace std;

#include "Assignment_2_Class.h"

void MatAdd :: read()
{
	int i, j, k;

	cout << "Enter the values of X, N & M\n";

	cin >> X >> N >> M;

	cout << "Enter the First Matrix\n";

	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{
				cin >> a[i][j][k];
			}
		}
	}

	cout << "Enter the Second Matrix\n";
	
	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{
				cin >> b[i][j][k];
			}
		}
	}
}

void MatAdd :: addMat(int X, int N, int M)
{
	int i, j, k;

	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{
				a[i][j][k] += b[i][j][k];
			}
		}
	}
}

void MatAdd :: write(int X, int N, int M)
{
	int i, j, k;
	
	cout << "The Resultant Matrix is :\n";

	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{
				cout << a[i][j][k] << "\t";
			}
			cout << endl;
		}
		cout << endl;
	}
}

