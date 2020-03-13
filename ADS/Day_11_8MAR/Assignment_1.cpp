#include<iostream>
#include<stack>
#include<string>

using namespace std;

bool BoP(stack<char> stk, string str)
{
	int i;
	char val;

	for(i = 0 ; i < str.length() ; ++i)
	{
		if( (str[i] == '(') || (str[i] == '{') || (str[i] == '[') || (str[i] == '<') )
			stk.push(str[i]);

		else
		{
			if(stk.empty())
			{
				return false;
			}
			else
			{
				val = stk.top();
				
				switch(val)
				{
					case '(':
							if(str[i] == ')')
							{	
								stk.pop();
								continue;
							}
							else
							{
								stk.pop();
								return false;
							}
							break;
					
					case '{':
							if(str[i] == '}')
							{
								stk.pop();
								continue;
							}
							else
								return false;
							break;
					
					case '[':
							if(str[i] == ']')
							{
								stk.pop();
								continue;
							}
							else
								return false;
							break;
					
					case '<':
							if(str[i] == '>')
							{
								stk.pop();
								continue;
							}
							else
								return false;
							break;
				}
			}
		}
	}// end of for loop

	if(stk.empty())
		return true;

	else
		return false;
}

int main()
{
	stack<char> stk;
	string str;

	bool res;

	cout << "Enter the Paranthesis String\n";
	cin >> str;
	
	res = BoP(stk, str);

	if(res == true)
		cout << "Matching\n";

	else
		cout << "Not Matching\n";

	return 0;
}
