#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct student
{
	int age;
	char name[10];
};

int compareInt(const void *a, const void *b)
{
	struct student *studentA = (struct student *)a;
	struct student *studentB = (struct student *)b;

	return (studentA->age - studentB->age);
}

int compareChar(const void *a, const void *b)
{
	struct student *studentA = (struct student *)a;
	struct student *studentB = (struct student *)b;

	return strcmp(studentA->name, studentB->name);

}

int main()
{
	int i, N;

	printf("Enter the number of Students\n");

	scanf("%d", &N);
	
	struct student obj[N];

	printf("Enter the details of Students\n");

	for(i = 0 ; i  < N ; ++i)
	{
		scanf("%d", &obj[i].age);
		scanf("%s", obj[i].name);
	}

	printf("The Details of the Students are \n");

	for(i = 0 ; i  < N ; ++i)
	{
		printf("%d\t", obj[i].age);
		printf("%s\n", obj[i].name);
	}

	qsort(obj, N, sizeof(struct student), compareInt);
	
	printf("The Details after qsort on age\n");

	for(i = 0 ; i  < N ; ++i)
	{
		printf("%d\t", obj[i].age);
		printf("%s\n", obj[i].name);
	}

	qsort(obj, N, sizeof(struct student), compareChar);

	printf("The Details after qsort on name\n");

	for(i = 0 ; i  < N ; ++i)
	{
		printf("%d\t", obj[i].age);
		printf("%s\n", obj[i].name);
	}

	return 0;
}
