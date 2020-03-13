#include<iostream>
#include<vector>

using namespace std;

bool linearSearch(vector <int> v, int key)
{
	vector <int> :: iterator itr;

	for(itr = v.begin() ; itr != v.end() ; ++itr)
	{
		if(*itr == key)
		{
			return true;
		}
	}
	return false;
}

int main()
{
	vector <int> v;

	bool res;
	int i, N, key, val;

	cout << "Enter the number of elements\n";
	cin >> N;

	cout << "Enter the elements of the vector\n";

	for(i = 0 ; i < N ; ++i)
	{
		cin >> val;
		v.push_back(val);
	}

	cout << "Enter the value to search\n";
	cin >> key;

	res = linearSearch(v, key);

	(res == true) ? (cout << "Element Found\n") : (cout << "Element Not Found\n") ;
	
	return 0;
}
