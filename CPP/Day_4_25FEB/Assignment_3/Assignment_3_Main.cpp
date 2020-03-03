#include<iostream>

using namespace std;

#include "Assignment_3_Class.h"

int main()
{
	MyStringFunctions s1;

	MyStringFunctions s2("Yo, ");

	MyStringFunctions s3;

	StrCpy(s3, s2);
	s3.write();

	MyStringFunctions s4("What's Up");

	StrCmp(s2, s4);

	StrCmp(s2, s3);

	StrCat(s2, s4);
	s2.write();

	return 0;
}
