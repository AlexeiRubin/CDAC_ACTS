#include<iostream>
#include<map>
#include<string>

using namespace std;

void checkScores(multimap<string, int> stuMap)
{	
	multimap<string, int> :: iterator itr;

	cout << endl;
	for(itr = stuMap.begin() ; itr != stuMap.end() ; ++itr)
	{
		if(itr->second < 40)
			cout << itr->first << " Failed\n";
		else
			cout << itr->first << " Passed\n";

	}
}

int main()
{
	int i, N, marks;
	string name;

	multimap<string,int> stuMap;

	cout << "Enter the number of Students\n";
	cin >> N;

	cout << "\nEnter the Name and the Marks of the Student\n";

	for(i = 0 ; i < N ; ++i)
	{
		cin >> name >> marks;
		stuMap.insert(pair<string, int>(name, marks));
	}

	checkScores(stuMap);

	return 0;
}
