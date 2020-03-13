#include<iostream>
#include<string.h>

using namespace std;

#include "Assignment_2_Class.h"

//default constructor
MyString :: MyString()
{
	cout << "\nDefault Constructor called\n";
	
	len = 0;
	str = new char;
	*str = '\0';
	
	cout << "Data members initialized as :\tLen = " << len << " & str = " << *str << endl;
}

//parameterized constructor
MyString :: MyString(const char *s)
{
	cout << "\nParametrized Constructor called\n";
	
	len = strlen(s);
	str = new char[len + 1];
	
	strcpy(str, s);
	
	cout << "Data members initialized as :\tLen = " << len << " & str = " << *str << endl;
}

//copy constructor for deep copy
MyString :: MyString(const MyString &s)
{
	cout << "\nCopy Constructor called\n";
	
	len = s.len;
	str = new char[len + 1];
	
	strcpy(str, s.str);
	
	cout << "Data members initialized as :\tLen = " << len << " & str = " << *str << endl;
}

/*//assessor function to get length of string
int MyString :: getMyStringLength() { return len; }

//assessor function to get string
char* MyString :: getMyString() { return *str; }

//mutator function to set the length of string
void MyString :: setMyStringLength() { }

//mutator function to set the string
void MyString :: setMyString()
{

}
*/

//to print data members
void MyString :: write()
{
	cout << "Len : " << len << " and Str : " << str << endl;
}

//overloaded [] operator
char MyString :: operator [] (int i)
{
	cout << "\n[] Operator being Overloaded \n";
	
	return str[i];
}

//overloaded + operator
MyString MyString :: operator + (MyString &s)
{
	cout << "\n+ Operator being Overloaded \n";

	MyString temp;

	temp.len = len + s.len;
	temp.str = new char[temp.len + 1];
	
	strcpy(temp.str, str);
	strcat(temp.str, s.str);

	return temp;
}

//overloaded = operator
void  MyString :: operator = (MyString &s)
{
	cout << "\n= Operator being Overloaded \n";

	len = s.len;
	str = new char[len + 1];
	
	strcpy(str, s.str);
}

//overloaded == operator
bool MyString :: operator == (MyString &s)
{
	int res;

	cout << "\n== Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if(res == 0)
		return 1;
	else
		return 0;
}

//overloaded < operator
bool MyString :: operator < (MyString &s)
{
	int res;

	cout << "\n< Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if(res < 0)
		return 1;
	else
		return 0;
}

//overloaded > operator
bool MyString :: operator > (MyString &s)
{
	int res;

	cout << "\n> Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if(res > 0)
		return 1;
	else
		return 0;
}

//overloaded != operator
bool MyString :: operator != (MyString &s)
{
	int res;

	cout << "\n!= Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if(res != 0)
		return 1;
	else
		return 0;
}

//overloaded <= operator
bool MyString :: operator <= (MyString &s)
{
	int res;

	cout << "\n<= Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if( (res == 0) || (res < 0) )
		return 1;
	else
		return 0;
}

//overloaded >= operator
bool MyString :: operator >= (MyString &s)
{
	int res;

	cout << "\n>= Operator being Overloaded \n";

	res = strcmp(str, s.str);

	if( (res == 0) || (res > 0) )
		return 1;
	else
		return 0;
}

//destructor
MyString :: ~MyString()
{
	delete[] str;
}
