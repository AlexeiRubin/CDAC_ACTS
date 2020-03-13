#include<iostream>
#include<string.h>
using namespace std;

#include "Assignment_3_Class.h"

MyStringFunctions :: MyStringFunctions()
{
	str = new char;
	*str = '\0';
}

void MyStringFunctions :: write()
{
	cout << "The String is : \t" << str;
}

char* MyStringFunctions :: StrCpy(char * dest, const char *src)
{
	for(int i = 0 ; i < strlen(src) ; ++i)
	{
		*(dest + i) = *(src + i);
	}
	return dest;
}

bool MyStringFunctions :: StrCmp(const char *dest, const char *src)
{
	for(int i = 0 ; i < strlen(src) ; ++i)
	{
		if( *(dest + i) != *(src + i) )
		{	
			return false;
			break;
		}
	}
	return true;
}

char* MyStringFunctions :: StrCat(char *dest, const char *src)
{
	for(int i = 0 ; i < strlen(src) ; ++i)
	{
		*(dest + i) = *(src + i);
	}
	return dest;
}
