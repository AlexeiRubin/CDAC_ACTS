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

class LinkedList
{
	public:
			Node *head;

			LinkedList()
			{
				head = NULL;
			}

			void insertAtBeg(int value)
			{
				Node *temp = new Node(value);

				if(head == NULL)
				{
					head = temp;
					return;
				}

				temp -> next = head;
				head = temp;
			}

			void insertAtPos(int value, int pos)
			{
				Node *temp = new Node(value);
				
				if(head == NULL)
				{
					head = temp;
					return;
				}

				Node *current = head;
				
				--pos;
				for(int i = 1 ; i < pos ; ++i)
				{
					current = current -> next;
				}
			
				temp -> next = current -> next;
			
				current -> next = temp;
			}
			
			void insertAtEnd(int value)
			{
				Node *temp = new Node(value);

				if(head == NULL)
				{
					head = temp;
					return;
				}

				Node *current = head;
				
				while(current -> next != NULL)
				{
					current = current -> next;
				}
				
				current -> next = temp;

				temp -> next = NULL;
			}

			void deleteFromBeg()
			{
				if(head == NULL)
				{
					cout << "\nLinked List is Empty\n";
					return;
				}

				Node *temp = head;

				cout << "\nValue deleted from Beginning is :\t" << temp -> data << endl;
				
				head = head -> next;

				delete temp;
			}
			
			void deleteUsingKey(int value)
			{
				if(head == NULL)
				{
					cout << "\nLinked List is Empty\n";
					return;
				}
			
				if(searchList(value))
				{
					Node *current = head;
					Node *prevNode = NULL;

					while(current -> data != value)
					{
						prevNode = current;
						current = current -> next;
					}

					if(current == head)
					{
						deleteFromBeg();
						return;
					}

					if( (current -> next == NULL) && (countNodes() != 1) )
					{
						deleteFromEnd();
						return;
					}
					
					/*Node *prevNode = NULL;
					
					while(current -> data != value)
					{
						prevNode = current;
						current = current -> next;
					}*/
				
					Node *temp = current;

					prevNode -> next = current -> next; 

					cout << "\nValue deleted :\t" << temp -> data << endl;

					delete temp;
				}

				else
				{
					cout << "\nThe Key is NOT in the List\n";
				}
			}
			
			void deleteFromEnd()
			{
				if(head == NULL)
				{
					cout << "\nLinked List is Empty\n";
					return;
				}

				Node *current = head;

				if(current -> next == NULL)
				{
					deleteFromBeg();
					return;
				}

				Node *prevNode = NULL;

				while(current -> next != NULL)
				{
					prevNode = current;
					current = current -> next;
				}

				Node *temp = prevNode;

				temp = temp -> next;

				cout << "\nValue deleted from End is :\t" << temp -> data << endl;

				prevNode -> next = NULL;

				delete temp;
			}

			int countNodes()
			{
				int count = 0;

				Node*current = head;

				while(current != NULL)
				{
					++count;
					current = current -> next;
				}

				return count;
			}

			void reverseList()
			{
				
			}

			bool searchList(int value)
			{
				Node *current = head;

				while(current != NULL)
				{
					if(current -> data == value)
						return true;

					current = current -> next;
				}
				return false;
			}
			
			void displayList()
			{
				Node *current = head;

				while(current != NULL)
				{
					cout << current -> data <<"\t";
					current = current -> next;
				}
			}
};

int main()
{
	int choice, value, pos, res;

	LinkedList myList;

	while(1)
	{
	
		cout << "\n\nEnter 1 to insert at Beginning\n";
		cout << "\nEnter 2 to insert at Specific Position\n";
		cout << "\nEnter 3 to insert at End\n";
		cout << "\nEnter 4 to delete from Beginning\n";
		cout << "\nEnter 5 to delete using Key\n";
		cout << "\nEnter 6 to delete from End\n";
		cout << "\nEnter 7 to display the List\n";	
		cout << "\nEnter 8 to count the nodes in the List\n";	
		cout << "\nEnter 9 to reverse the List\n";	
		cout << "\nEnter 10 to search in the List\n";	
		cout << "\nEnter (-1) to Exit\n\n";

		cin >> choice;

		if(choice == (-1))
			break;
	
		switch(choice)
		{
			case 1:
				
				cout << "\nEnter a value to insert at Beginning\n";
				cin >> value;
				
				myList.insertAtBeg(value);
				
				break;
			
			case 2:
				
				cout << "\nEnter a value to insert at Specific Position\n";
				cin >> value;
				
				cout << "\nEnter a position\n";
				cin >> pos;
				
				myList.insertAtPos(value, pos);
				
				break;
			
			case 3:
				
				cout << "\nEnter a value to insert at End\n";
				cin >> value;
				
				myList.insertAtEnd(value);
				
				break;
			
			case 4:
				
				myList.deleteFromBeg();
					
				break;
			
			case 5:
				
				cout << "\nEnter a Key\n";
				cin >> value;
				
				myList.deleteUsingKey(value);
				
				break;
			
			case 6:
				
				myList.deleteFromEnd();
					
				break;
			
			case 7:
				
				cout << "\nThe Linked List is : ";
				
				myList.displayList();
				
				cout << endl;
				
				break;
			
			case 8:
				
				res = myList.countNodes();
				
				cout << "\nThe count of nodes in the Linked List are : \t" << res << endl;
				
				break;
			
			case 9:
				
				cout << "\nThe Reversed Linked List is : ";
				
				myList.reverseList();
				
				myList.displayList();
				
				cout << endl;
				
				break;
			
			case 10:
				
				cout << "\nEnter a value to search in the List\n";
				cin >> value;

				if(myList.searchList(value))
					cout << "\nThe Value is Found\n";
				else
					cout << "\nThe Value is NOT Found\n";
				
				break;
		}
	}
	return 0;
}
