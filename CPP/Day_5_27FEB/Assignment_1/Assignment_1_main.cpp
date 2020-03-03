#include<iostream>

using namespace std;

#include "Assignment_1_date.h"
#include "Assignment_1_time.h"

int main()
{
	//default constructor call
	MyDate d1;

	//to read data from user to override default constructor initialization
	d1.read();

	//to print the data after user input
	d1.write();

	//default constructor call
	MyDate d2;

	//to print the data after default constructor call
	d2.write();

	//overloaded = operator
	MyDate d3 = d1;
	
	//to print the values of d3 Date after overloading = operator
	d3.write();

	//overloaded == operator
	if(d3 == d1)
		cout << "d3 is equal to d1\n";
	else
		cout << "d3 is not equal to d1\n";
	
	if(d2 == d1)
		cout << "d2 is equal to d1\n";
	else
		cout << "d2 is not equal to d1\n";

	//parameterized constructor call
	MyDate d4(16, 5, 1996);

	//overloaded + operator
	MyDate d5 = d3 + d4;

	//to print the values of d5 after overloading + operator
	d5.write();

	//overloaded ++ opeartor
	++d5;
	
	//to print the values of d5 after overloading ++ operator
	d5.write();

	//overloaded -- operator
	--d5;

	//to print the values of d5 after overloading -- operator
	d5.write();

	//overloaded [] operator

	//default constructor call
	MyTime t1;

	//to read data from user to override default constructor initialization
	t1.read();

	//to print the data after user input
	t1.write();

	//default constructor call
	MyTime t2;

	//to print the data after default constructor call
	t2.write();

	//overloaded = operator
	MyTime t3 = t1;
	
	//to print the values of d3 Time after overloading = operator
	t3.write();

	//overloaded == operator
	if(t3 == t1)
		cout << "t3 is equal to t1\n";
	else
		cout << "t3 is not equal to t1\n";
	
	if(t2 == t1)
		cout << "t2 is equal to t1\n";
	else
		cout << "t2 is not equal to t1\n";

	//parameterized constructor call
	MyTime t4(16, 5, 20);

	//overloaded + operator
	MyTime t5 = t3 + t4;

	//to print the values of t5 after overloading + operator
	t5.write();

	//overloaded ++ opeartor
	++t5;
	
	//to print the values of t5 after overloading ++ operator
	t5.write();

	//overloaded -- operator
	--t5;

	//to print the values of t5 after overloading -- operator
	t5.write();

	//overloaded [] operator

	return 0;
}
