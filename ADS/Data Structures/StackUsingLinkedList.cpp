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

class Stack
{
	public:
			Node *top;

			Stack()
			{
				top = NULL;
			}

			void push(int value)
			{
				Node *temp = new Node(value);

				if(top == NULL)
				{
					top = temp;
					return;
				}

				temp -> next = top;
				top = temp;
			}

			void pop()
			{
				if(top == NULL)
				{
					cout << "\nStack is Empty, UNDERFLOW\n";
					return;
				}

				Node *temp = top;

				cout << "\nValue popped is :\t" << temp -> data << endl;
				
				top = top -> next;

				delete temp;
			}
			
			int countNodes()
			{
				int count = 0;

				Node *current = top;

				while(current != NULL)
				{
					++count;
					current = current -> next;
				}

				return count;
			}

			void reverseStack()
			{
				
			}

			bool searchStack(int value)
			{
				Node *current = top;

				while(current != NULL)
				{
					if(current -> data == value)
						return true;

					current = current -> next;
				}
				return false;
			}
			
			void displayStack()
			{
				Node *current = top;

				while(current != NULL)
				{
					cout << current -> data <<"\n";
					current = current -> next;
				}
			}
};

int main()
{
	int choice, value, res;

	Stack myStack;

	while(1)
	{
	
		cout << "\n\nEnter 1 to PUSH\n";
		cout << "\nEnter 2 to POP\n";
		cout << "\nEnter 3 to Count Nodes\n";
		cout << "\nEnter 4 to Reverse the Stack\n";
		cout << "\nEnter 5 to Search in Stack using Key\n";
		cout << "\nEnter 6 to Display the Stack\n";
		cout << "\nEnter (-1) to Exit\n\n";

		cin >> choice;

		if(choice == (-1))
			break;
	
		switch(choice)
		{
			case 1:
				
				cout << "\nEnter a value to PUSH\n";
				cin >> value;
				
				myStack.push(value);
				
				break;
			
			case 2:
				
				myStack.pop();
					
				break;
				
			case 3:
				
				res = myStack.countNodes();
				
				cout << "\nThe count of nodes in the Stack are : \t" << res << endl;
				
				break;
			
			case 4:
				
				cout << "\nThe Reversed Stack is : ";
				
				myStack.reverseStack();
				
				myStack.displayStack();
				
				cout << endl;
				
				break;
			
			case 5:
				
				cout << "\nEnter a value to search in the Stack\n";
				cin >> value;

				if(myStack.searchStack(value))
					cout << "\nThe Value is Found\n";
				else
					cout << "\nThe Value is NOT Found\n";
				
				break;
			
			case 6:
				
				cout << "\nThe Stack is :\n";
				
				myStack.displayStack();
				
				cout << endl;
				
				break;
		}
	}
	return 0;
}
