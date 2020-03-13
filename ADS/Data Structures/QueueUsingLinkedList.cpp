#include<iostream>

using namespace std;

struct Node
{
	int data;
	Node *next;

	Node(int value)
	{
		data = value;
		next = NULL;
	}
};

class Queue
{
	public:
			Node *front, *rear;

			Queue()
			{
				front = rear = NULL;
			}

			void enqueue(int value)
			{
				Node *temp = new Node(value);

				if(front == NULL)
				{
					front = rear = temp;
					return;
				}

				rear -> next = temp;
				rear = temp;
			}

			void dequeue()
			{
				if(front == NULL)
				{
					cout << "\nQueue is Empty, UNDERFLOW\n";
					return;
				}

				Node *temp = front;

				cout << "\nValue dequeued is :\t" << temp -> data << endl;
				
				front = front -> next;

				delete temp;
			}
			
			int countNodes()
			{
				int count = 0;

				Node *current = front;

				while(current != rear)
				{
					++count;
					current = current -> next;
				}

				if(current == rear)
					++count;

				return count;
			}

			void reverseQueue()
			{
				
			}

			bool searchQueue(int value)
			{
				Node *current = front;

				while(current != rear)
				{
					if(current -> data == value)
						return true;

					current = current -> next;
				}

				if(current == rear)
				{
					if(current -> data == value)
						return true;
				}

				return false;
			}
			
			void displayQueue()
			{
				Node *current = front;

				while(current != rear)
				{
					cout << current -> data << endl;
					current = current -> next;
				}

				if(current == rear)
					cout << current -> data << endl;

			}
};

int main()
{
	int choice, value, res;

	Queue myQueue;

	while(1)
	{
	
		cout << "\n\nEnter 1 to ENQUEUE\n";
		cout << "\nEnter 2 to DEQUEUE\n";
		cout << "\nEnter 3 to Count Nodes\n";
		cout << "\nEnter 4 to Reverse the Queue\n";
		cout << "\nEnter 5 to Search in Queue using Key\n";
		cout << "\nEnter 6 to Display the Queue\n";
		cout << "\nEnter (-1) to Exit\n\n";

		cin >> choice;

		if(choice == (-1))
			break;
	
		switch(choice)
		{
			case 1:
				
				cout << "\nEnter a value to ENQUEUE\n";
				cin >> value;
				
				myQueue.enqueue(value);
				
				break;
			
			case 2:
				
				myQueue.dequeue();
					
				break;
				
			case 3:
				
				res = myQueue.countNodes();
				
				cout << "\nThe count of nodes in the Queue are : \t" << res << endl;
				
				break;
			
			case 4:
				
				cout << "\nThe Reversed Queue is : ";
				
				myQueue.reverseQueue();
				
				myQueue.displayQueue();
				
				cout << endl;
				
				break;
			
			case 5:
				
				cout << "\nEnter a value to search in the Queue\n";
				cin >> value;

				if(myQueue.searchQueue(value))
					cout << "\nThe Value is Found\n";
				else
					cout << "\nThe Value is NOT Found\n";
				
				break;
			
			case 6:
				
				cout << "\nThe Queue is :\n";
				
				myQueue.displayQueue();
				
				cout << endl;
				
				break;
		}
	}
	return 0;
}
