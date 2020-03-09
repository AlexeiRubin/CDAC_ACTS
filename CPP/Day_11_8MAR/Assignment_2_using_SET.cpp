#include<iostream>
#include<set>

using namespace std;

void SoE(set <int> s, int N)
{
	set <int> :: iterator itr;

	for(int i = 2; i < N ; ++i)
	{
		for(itr = s.begin() ; itr != s.end() ; ++itr)
		{
			if(*itr == i)
				continue;
			if( (*itr % i) == 0 )
				s.erase(itr);
		}
	}
	
	cout << "\nPrime Numbers less than N are : ";

	for(itr = s.begin() ; itr != s.end() ; ++itr)
	{
		cout << *itr << "\t";
	}

	cout << endl;

}

int main()
{
	int N, i;

	cout << "Enter the value of N\n";

	cin >> N;
	
	set <int> s;
	
	for(i = 0 ; i < N ; ++i)
		s.insert(i + 2);

	SoE(s, N);

	return 0;
}
