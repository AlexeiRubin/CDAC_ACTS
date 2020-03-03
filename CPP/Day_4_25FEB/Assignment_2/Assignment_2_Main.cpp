#include<iostream>

using namespace std;

#include "Assignment_2_Class.h"

int main()
{
	MatAdd obj;

	obj.read();

	obj.addMat(obj.X, obj.N, obj.M);
	
	obj.write(obj.X, obj.N, obj.M);

	return 0;
}
