#include<iostream>

using namespace std;

void ReadMatrix(int **mats[], int X, int N, int M)
{
	int i, j, k;

	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{
				cin >> *( *( *(mats + i) + j) + k);
			}
		}
		cout << "Enter another Matrix\n";
	}
}

void WriteMatrix(int *res[], int N, int M)
{
	int i, j;

	for(i = 0 ; i < N ; ++i)
	{
		for(j = 0 ; j < M ; ++j)
		{
				//cout << **(res + (i * M) + j) << "\t";
				cout << res[i][j] << "\t";
		}
		cout << endl;
	}
}

void AddMatrix(int *res[], int **mats[], int X, int N, int M)
{
	int i, j, k;

	for(i = 0 ; i < X ; ++i)
	{
		for(j = 0 ; j < N ; ++j)
		{
			for(k = 0 ; k < M ; ++k)
			{	
				if( (i + 1) == X)
					break;

				//*(res + (j * M) + k) = *( *( (mats + i) + j) + k) + *( *( *(mats + i + 1) + j) + k);
				res[j][k] = mats[i][j][k] + mats[i + 1][j][k];
			}
		}
	}
}

int main()
{
	int i, j, k, X, N, M;

	cout << "Enter the number of matrices\n";

	cin >> X;

	cout << "Enter the rows and columns of each matrix\n";

	cin >> N >> M;

	int ***mats = (int ***) malloc(X * sizeof(int **));

	for(i = 0 ; i < X ; ++i)
	{
		mats[i] = (int **) malloc(N * sizeof(int *));

		for(j = 0 ; j < N ; ++j)
		{
			mats[i][j] = (int *) malloc(M * sizeof(int));
		}
	}

	cout << "Enter the elements of the Matrices\n";

	ReadMatrix(mats, X, N, M);

	cout << "Adding all the Matrices\n";

	int **res = (int **) malloc(N * sizeof(int *));

	for(i = 0 ; i < N ; ++i)
	{
		res[i] = (int *) malloc(M * sizeof(int));
	}
	
	AddMatrix(res, mats, X, N, M);

	cout << "The Resultant Matrix is :\n";
	
	WriteMatrix(res, N, M);

	return 0;
}
