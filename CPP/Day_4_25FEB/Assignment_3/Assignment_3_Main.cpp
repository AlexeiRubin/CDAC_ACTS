#include<iostream>

using namespace std;

#include "Assignment_3_Class.h"

int main()
{
	bool res;

	MyStringFunctions s1;

	MyStringFunctions s2("Yo, ");

	MyStringFunctions s3;

	s3.str = s3.StrCpy(s3, s2);
	s3.write();

	MyStringFunctions s4("What's Up");

	res = s2.StrCmp(s2, s4);

	if(res == true)
		cout << "\ns2 is equal to s4\n";
	else
		cout << "\ns2 is not equal to s4\n";
	
	res = s2.StrCmp(s2, s3);

	if(res == true)
		cout << "\ns2 is equal to s3\n";
	else
		cout << "\ns2 is not equal to s3\n";
	
	
	s2.str = s2.StrCat(s2, s4);
	s2.write();

	return 0;
}
