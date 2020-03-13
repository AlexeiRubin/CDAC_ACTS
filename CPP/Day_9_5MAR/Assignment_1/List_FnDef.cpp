#include<iostream>

#include "List.h"

using namespace std;

myList :: myList()
{
	*theList = NULL;
	sizeOfList = 0;
	index = 0;
}

void myList :: createList(int N)
{
	theList = new T[N];
}

void myList :: addItemToList(T value)
{	
	*(theList+index) = value;
}

bool myList :: isListEmpty()
{
	if (index == 0)
		return true;
	else
		return false;
}

bool myList :: isListFull()
{
	if(index == sizeOfList)
		return true;
	else
		return false;
}

void myList :: writeList()
{
	for(int i = 0 ; i < sizeOfList ; ++i)
		cout << *(theList+i) << "\t";
	
	cout << endl;
}

void myList :: visitIndexOfList(T i)
{
	cout << *(arr+i) << endl;
}

void myList :: setSizeOfList(int N)
{
	this.sizeOfList = N;
}

int myList :: getSizeOfList()
{
	return sizeOfList;
}
