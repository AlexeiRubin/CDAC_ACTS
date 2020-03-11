#include<iostream>

using namespace std;

class circularQueue
{

	public:
			int *arr;
			int N, front, rear;

			circularQueue(int N)
			{
				N = N;
				arr = new int[N];
				front = rear = 0;
			}

			~circularQueue()
			{
				delete[] arr;
			}

			void insert(int value)
			{
				if( (rear + 1) != front)
				{
					arr[rear] = value;
					++rear;
				}
				else
				{
					cout << "\nOverflow\n";
				}
			}

			int del()
			{
				if( (front - 1) != rear)
				{
					int value = arr[front];
					++front;
					return value;
				}
				else
				{
					cout << "\nUnderflow\n";
					return 0;
				}
			}

			void isQueueEmpty()
			{
				if(front == rear)
					cout << "\nQueue is Empty\n";
			}

			void isQueueFull()
			{
				if(rear == (front - 1))
					cout << "\nQueue is FULL\n";
			}
};

int main()
{
	int N;

	cout << "Enter the size of the queue\n";
	cin >> N;

	circularQueue cq(N);

	cq.insert(1);
	cq.insert(2);
	cq.insert(3);
	cq.insert(4);
	cq.insert(5);
	cout << "Deleted : \t" << cq.del() << endl;
	cout << "Deleted : \t" << cq.del() << endl;
	cout << "Deleted : \t" << cq.del() << endl;
	cq.isQueueEmpty();
	cq.isQueueFull();

	return 0;
}
