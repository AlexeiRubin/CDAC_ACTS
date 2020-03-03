#include<iostream>

using namespace std;

#include "Assignment_1_Class.h"

int main()
{
	MatAdd obj;

	obj.read();

	obj.addMat(obj.N, obj.M);

	obj.write(obj.N, obj.M);

	return 0;
}
