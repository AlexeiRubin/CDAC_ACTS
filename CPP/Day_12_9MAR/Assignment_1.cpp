#include<iostream>
#include<string>

using namespace std;

void countSort(string str)
{
	int i, j;

	char op[str.length()];

	int hashArr[256] = {0};

	for(i = 0 ; str[i] ; ++i)
	{
		++hashArr[str[i]];
	}
	
	for(i = 1 ; i < 255 ; ++i)
	{
		hashArr[i] += hashArr[i - 1];
	}

	for(i = 0 ; i < str[i]	 ; ++i)
	{
		op[hashArr[str[i]] - 1] = str[i];
		--hashArr[str[i]];
	}

	for(i = 0 ; i < str[i] ; ++i)
	{
		str[i] = op[i];
	}

	cout << str << endl;
}

int main()
{
	string str;

	cout << "Enter a string\n";
	cin >> str;

	countSort(str);

	return 0;
}
