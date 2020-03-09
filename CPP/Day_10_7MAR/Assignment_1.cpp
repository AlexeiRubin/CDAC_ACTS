#include<iostream>

using namespace std;

template <class T>

class myArray
{
	T *p;
	int N;

	public:
			myArray(int N)
			{
				p = new T[N];	
			}
			
			T &operator[] (T i)
			{
				return p[i];
			}

			void read(int N)
			{
				cout << "Enter the elements\n";
				
				for(int i = 0 ; i < N ; ++i)
				{
					cin >> p[i];
				}

			}

			void write(int N)
			{
				cout << "The elements are : ";

				for(int i = 0 ; i < N ; ++i)
				{
					cout << p[i] << "\t";
				}

			}
};

int main()
{
	int N, pos;

	cout << "Enter the number of Elements\n";
	cin >> N;

	myArray <int> a(N);
	a.read(N);
	a.write(N);

	cout << endl;
	
	myArray <char> b(N);
	b.read(N);
	b.write(N);

	cout << "\nEnter an index\n";
	cin >> pos;
	
	--pos;
	
	cout << a[pos] << " " << b[pos];

	return 0;
}
