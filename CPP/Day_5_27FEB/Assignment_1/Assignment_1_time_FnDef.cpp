#include<iostream>

using namespace std;

#include "Assignment_1_time.h"

//default constructor
MyTime :: MyTime()
{	
	myHour = 10;
	myMin = 10;
	mySec = 37;
	
	cout << "\nData Members intialized as :\t" << myHour << "-" << myMin << "-" << mySec << endl;
}

//parametrized constructor
MyTime :: MyTime(int h, int m, int s)
{	
	myHour = h;
	myMin = m;
	mySec = s;
	
	cout << "\nData Members intialized with parameters :\t" << myHour << "-" << myMin << "-" << mySec << endl;
}

//mutator funtion to set value of myHour
void MyTime :: setMyHour(int h) { myHour = h; }

//mutator funtion to set value of myMin
void MyTime :: setMyMin(int m) { myMin = m; }

//mutator funtion to set value of mySec
void MyTime :: setMySec(int s) { mySec = s; }

//assessor funtion to get value myHour
int MyTime :: getMyHour() { return myHour; }

//assessor funtion to get value myMin
int MyTime :: getMyMin() { return myMin; }

//assessor funtion to get value mySec
int MyTime :: getMySec() { return mySec; }

//to read time from user
void MyTime :: read()
{
	int h, m, s;

	cout << "\nReading Time from user\n";
	
	cin >> h >> m >> s;

	setMyHour(h);
	setMyMin(m);
	setMySec(s);
}

//to print the time
void MyTime :: write()
{	
	cout << "\nPrinting the Time\n";

	cout << getMyHour() << "-" << getMyMin() << "-" << getMySec() << endl;
}

//overloaded = operator
void MyTime :: operator = (MyTime h)
{
	cout << "\nOverloading = operator\n";

	myHour = h.myHour;
	myMin = h.myMin;
	mySec = h.mySec;
}

//overloaded == operator
bool MyTime :: operator == (MyTime h)
{
	cout << "\nOverloading == operator\n";

	if( (myHour == h.myHour) && (myMin == h.myMin) && (mySec == h.mySec) )
		return 1;
	else
		return 0;
}

//overloaded + operator
MyTime MyTime :: operator + (MyTime h)
{
	cout << "\nOverloading + operator\n";
	
	MyTime temp;

	int resH = 0, resM = 0, resS = 0;

	resS += mySec;

	if(resS > 60)
	{
		resS %= 60;
		++resM;
	}
	
	resM += myMin;
	
	if(resM > 60)
	{
		resM %= 60;
		++resH;
	}
	
	resH = myHour + h.myHour;
	
	if(resH > 24)
	{
		resH %= 24;
	}

	temp.myHour = resH;
	temp.myMin = resM;
	temp.mySec = resS;

	return temp;
}

//overloaded ++ operator
void MyTime :: operator ++ ()
{
	int resH, resM, resS;

	resH = myHour + 1;
	resM = myMin + 1;
	resS = mySec + 1;
	
	if(resS > 60)
	{
		++resM;
	}

	if(resM > 60)
	{
		++resH;
	}
	
	if(resH > 24)
	{	
		resH %= 24;
	}
	
	myHour = resH;
	myMin = resM;
	mySec = resS;
}

//overloaded -- operator
void MyTime :: operator --()
{
	int resH, resM, resS;

	resH = myHour - 1;
	resM = myMin - 1;
	resS = mySec - 1;
	
	if(resH == 0)
	{
		--resM;
	}
	
	if(resM == 0)
	{	
		--resS;
	}
	
	myHour = resH;
	myMin = resM;
	mySec = resS;
}
//overloaded [] operator
