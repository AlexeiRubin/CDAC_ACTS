#include<iostream>

using namespace std;

#include "Assignment_1_date.h"

//default constructor
MyDate :: MyDate()
{	
	myDate = 1;
	myMonth = 1;
	myYear = 1990;
	
	cout << "\nData Members intialized as :\t" << myDate << "-" << myMonth << "-" << myYear << endl;
}

//parametrized constructor
MyDate :: MyDate(int d, int m, int y)
{	
	myDate = d;
	myMonth = m;
	myYear = y;
	
	cout << "\nData Members intialized with parameters :\t" << myDate << "-" << myMonth << "-" << myYear << endl;
}

//mutator funtion to set value of myDate
void MyDate :: setMyDate(int d) { myDate = d; }

//mutator funtion to set value of myMonth
void MyDate :: setMyMonth(int m) { myMonth = m; }

//mutator funtion to set value of myYear
void MyDate :: setMyYear(int y) { myYear = y; }

//assessor funtion to get value myDate
int MyDate :: getMyDate() { return myDate; }

//assessor funtion to get value myMonth
int MyDate :: getMyMonth() { return myMonth; }

//assessor funtion to get value myYear
int MyDate :: getMyYear() { return myYear; }

//to read date from user
void MyDate :: read()
{
	int d, m, y;

	cout << "\nReading Date from user\n";
	
	cin >> d >> m >> y;

	setMyDate(d);
	setMyMonth(m);
	setMyYear(y);
}

//to print the date
void MyDate :: write()
{	
	cout << "\nPrinting the Date\n";

	cout << getMyDate() << "-" << getMyMonth() << "-" << getMyYear() << endl;
}

//overloaded = operator
void MyDate :: operator = (MyDate d)
{
	cout << "\nOverloading = operator\n";

	myDate = d.myDate;
	myMonth = d.myMonth;
	myYear = d.myYear;
}

//overloaded == operator
bool MyDate :: operator == (MyDate d)
{
	cout << "\nOverloading == operator\n";

	if( (myDate == d.myDate) && (myMonth == d.myMonth) && (myYear == d.myYear) )
		return 1;
	else
		return 0;
}

//overloaded + operator
MyDate MyDate :: operator + (MyDate d)
{
	cout << "\nOverloading + operator\n";
	
	MyDate temp;

	int modder = 0, resD = 0, resM = 0, resY = 0;

	switch(myMonth)
	{
		case 1:
				modder = 31;
				break;

		case 2:
				if( (myYear % 4) == 0)
				{
					if( (myYear % 100) == 0)
					{
						if( (myYear % 400) == 0)
						{
							modder = 29;
						}
						else
						{
							modder = 28;
						}
					}
					else
					{
						modder = 29;
					}
				}
				else
				{
					modder = 28;
				}
				break;

		case 3:
				modder = 31;
				break;

		case 4:
				modder = 30;
				break;

		case 5:
				modder = 31;
				break;

		case 6:
				modder = 30;
				break;

		case 7:
				modder = 31;
				break;

		case 8:
				modder = 31;
				break;

		case 9:
				modder = 30;
				break;
		
		case 10:
				modder = 31;
				break;
		
		case 11:
				modder = 30;
				break;
		
		case 12:
				modder = 31;
				break;
	}

	resD = myDate + d.myDate;
	
	if(resD > modder)
	{
		resD %= modder;
		++resM;

		if(resD > modder)
		{
			resD %= modder;
			++resM;
		}
	}

	resM += myMonth;
	
	if(resM > 12)
	{
		resM %= 12;
		++resY;
	}

	resY += myYear;

	temp.myDate = resD;
	temp.myMonth = resM;
	temp.myYear = resY;

	return temp;
}

//overloaded ++ operator
void MyDate :: operator ++ ()
{
	int resD, resM, resY;

	resD = myDate + 1;
	resM = myMonth + 1;
	resY = myYear + 1;
	
	if(resD > 30)
	{
		++resM;
		resD = 1;
	}
	
	if(resM > 12)
	{	
		++resY;
		resM = 1;
	}
	
	myDate = resD;
	myMonth = resM;
	myYear = resY;
}

//overloaded -- operator
void MyDate :: operator --()
{
	int resD, resM, resY;

	resD = myDate - 1;
	resM = myMonth - 1;
	resY = myYear - 1;
	
	if(resD == 0)
	{
		--resM;
		resD= 31;
	}
	
	if(resM == 0)
	{	
		--resY;
		resM = 12;
	}
	
	myDate = resD;
	myMonth = resM;
	myYear = resY;
}
//overloaded [] operator
