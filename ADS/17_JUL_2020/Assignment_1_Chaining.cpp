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
    public :
            Node *head;
            
            LinkedList() { head = NULL; }
            
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
				
				if(current == NULL)
					cout << "NULL ---> ";
					
				while(current != NULL)
				{
					cout << current -> data << " ---> ";
					current = current -> next;
				}
			}
			
			~LinkedList()
			{
				Node *current = head;
				
				while(current != NULL)
				{
					current = current -> next;
					
					delete[] head;
					head = current;
				}
			}
};

struct Bucket
{
	LinkedList bucketList;
	bool flag;
};

class HashTable
{
	Bucket *table;
	int size;

	public :
			HashTable(int N) : size(N) { table = new Bucket[size]; }
	
			bool addToTable(int N)
			{
				int bucketId = hashFunctionMod(N);
        
				if(table[bucketId].bucketList.head == NULL)
				{
					table[bucketId].bucketList.insertAtBeg(N);
					return true;
				}
				
				if(table[bucketId].bucketList.searchList(N))
					return false;
				else
				{
					table[bucketId].bucketList.insertAtBeg(N);
					return true;
				}
			}
			
			bool searchTable(int item)
			{
				for(int i = 0 ; i < size ; ++i)
				{
					if(table[i].bucketList.searchList(item))
						return true;
				}
				
				return false;
			}
			
			void displayTable()
			{
				for(int i = 0 ; i < size ; ++i)
				{
					table[i].bucketList.displayList();
					cout << endl;
				}
				cout << endl;
			}
			
			int hashFunctionMod(int key) { return (key % size); }
	
			~HashTable() { delete[] table; }
};

int main()
{
	HashTable ht(10);
    
	int N, choice, srch;
	
    while(1)
    {
		cout << "Enter 1 to Bucket a Number\n";
		cout << "Enter 2 to Search a Number\n";
		cout << "Enter 3 to Display the Table\n";
		cout << "Enter 4 to Exit\n\n";
		
		cin >> choice;
		
		if(choice == 1)
		{
			cout << "Enter the Number : ";
			cin >> N;
			
			if(ht.addToTable(N))
				cout << "Number bucketed\n\n";
			else
				cout << "\nDuplicate Entry of Element : " << N << "\n\n";
			
		}
		else if(choice == 2)
		{
			cout << "Enter the element to Search: ";
			cin >> srch;
			
			if(ht.searchTable(srch))
				cout << "Element Found\n";
			else
				cout << "Element NOT Found\n";
			
        }
		else if(choice == 3)
		{
			ht.displayTable();
		}
		else if(choice == 4)
			break;
    }
    return 0;
}