#include<stdio.h>
#include<stdlib.h>

struct student
{
	int age;
	char name[10];
}
obj[3];

int compareInt(const void *a, const void *b)
{
	struct student *studentA = (struct student *)a;
	struct student *studentB = (struct student *)b;

	return (studentA->age - studentB->age);
}
/*
int compareChar(const void *a, const void *b)
{
	struct student *studentA = (struct student *)a;
	struct student *studentB = (struct student *)b;

	return (studentA->name - studentB->name);
}*/

int main()
{
	int i;

	for(i = 0 ; i  < 3 ; ++i)
	{
		scanf("%d", &obj[i].age);
		scanf("%s", obj[i].name);
	}

	for(i = 0 ; i  < 3 ; ++i)
	{
		printf("%d\t", obj[i].age);
		printf("%s\n", obj[i].name);
	}

	qsort(obj,3,sizeof(struct student),compareInt);
	//qsort(obj,3,sizeof(struct student),compareChar);

	for(i = 0 ; i  < 3 ; ++i)
	{
		printf("%d\t", obj[i].age);
		printf("%s\n", obj[i].name);
	}
	return 0;
}
