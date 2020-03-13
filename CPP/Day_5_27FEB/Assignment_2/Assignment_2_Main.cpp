#include<iostream>

using namespace std;

#include "Assignment_2_Class.h"

int main()
{
	//default constructor
	MyString s1;

	//parameterized constructor
	MyString s2("Yo,");

	//copy constructor
	MyString s3(s2);
	
	//parametrized constructor
	MyString s4("What up");

	//overloaded [] operator
	cout << s2[1] << endl;

	//overloaded + operator
	MyString s6 = s2 + s4;
	s6.write();
	
	//overloaded = operator
	MyString s7 = s6;
	s7.write();

	//overloaded == operator
	if(s2 == s3)
		cout << "MyStrings are Equal\n";
	else
		cout <<"MyStrings are not Equal\n";

	if(s6 == s4)
		cout << "MyStrings are Equal\n";
	else
		cout << "MyStrings are not Equal\n";

	//overloaded < operator
	if(s2 < s4)
		cout << "MyString s2 is less than s4\n";
	else
		cout <<"MyString s2 is not less than s4\n";

	if(s6 < s4)
		cout << "MyString s6 is less than s4\n";
	else
		cout << "MyString s6 is not less than s4\n";
	
	//overloaded > operator
	if(s2 > s3)
		cout << "MyString s2 is greater than s3\n";
	else
		cout <<"MyString s2 is not greater than s3\n";

	if(s6 > s4)
		cout << "MyString s6 is greater than s4\n";
	else
		cout << "MyString s6 is not greater than s4\n";
	
	//overloaded != operator
	if(s2 != s3)
		cout << "MyString s2 is not equal to s3\n";
	else
		cout <<"MyString s2 is equal to s3\n";

	if(s6 != s4)
		cout << "MyString s6 is not equal to s4\n";
	else
		cout << "MyString s6 is equal to s4\n";
	
	//overloaded <= operator
	if(s2 <= s3)
		cout << "MyString s2 is less than or equal to s3\n";
	else
		cout <<"MyString s2 is not less than or equal to s3\n";

	if(s6 <= s4)
		cout << "MyString s6 is less than or equal to s4\n";
	else
		cout << "MyString s6 is not less than or euqal to s4\n";
	
	//overloaded >= operator
	if(s2 >= s3)
		cout << "MyString s2 is greater than or equal to s3\n";
	else
		cout <<"MyString s2 is not greater than or equal to s3\n";

	if(s6 >= s4)
		cout << "MyString s6 is greater than or equal to s4\n";
	else
		cout << "MyString s6 is not greater than or equal to s4\n";

	return 0;
}
