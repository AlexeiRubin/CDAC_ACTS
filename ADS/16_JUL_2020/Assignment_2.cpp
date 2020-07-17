#include<iostream>

using namespace std;

const int HT_SIZE = 21;

class Node
{
    public :
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
};

int hashFunctionMod(int key)
{
    if(key >= 0)
        return ( (key % 10) + 10);
    else
    {
        return ( (key % 10) * (-1) );
    }
}

int main()
{
	int N, bucketId, choice, srch;
	
	LinkedList List[HT_SIZE];
    
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
			
			bucketId = hashFunctionMod(N);
        
			if(List[bucketId].head == NULL)
				List[bucketId].insertAtBeg(N);
			else
			{
				if(List[bucketId].searchList(N))
					cout << "\nDuplicate Entry of Element : " << N << "\n\n";
				else
					List[bucketId].insertAtBeg(N);
			}
		}
		else if(choice == 2)
		{
			int flag = 0;
			cout << "Enter Search Element : ";
			cin >> srch;
			
			for(int i = 0 ; i < HT_SIZE ; ++i)
			{
				if( List[i].searchList(srch) )
				{
					flag = 1;
					break;
				}
				else
					flag = 0;
			}
			
			(flag == 1) ? (cout << "Element Found\n") : (cout << "Element NOT Found\n");
        }
		else if(choice == 3)
		{	
			for(int i = 0 ; i < HT_SIZE ; ++i)
			{
				List[i].displayList();
				cout << endl;
			}
			cout << endl;
		}
		else if(choice == 4)
			break;
    }
    return 0;
}