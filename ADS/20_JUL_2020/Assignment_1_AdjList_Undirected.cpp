#include<iostream>

using namespace std;

class AdjacencyList
{
    struct Node
	{
		int adjNode;
		int weight;
		Node *next;
		
		Node(Node *N , int B, int W) : next(N), adjNode(B), weight(W) {}
	};
	
	Node **list;
    int nodeCount;
    
    public :
            AdjacencyList(int N) : nodeCount(N)
            {
                list = new Node *[nodeCount];
                
                for(int i = 0 ; i < nodeCount ; ++i)
					list[i] = NULL;
            }
            
            void addEdge(int A, int B, int W = 1)
            {
				Node *tempA = new Node(list[A], B, W);
				Node *tempB = new Node(list[B], A, W);
				
				if(list[A] == NULL)
				{
				    list[A] = tempA;
				    return;
				}
				
				Node *currentA = list[A];
				
				while(currentA -> next != NULL)
				{
				    currentA = currentA -> next;
				}
				
				currentA -> next = tempA;
				tempA -> next = NULL;
				
				if(list[B] == NULL)
				{
				    list[B] = tempB;
				    return;
				}
				
				Node *currentB = list[B];
				
				while(currentB -> next != NULL)
				{
				    currentB = currentB -> next;
				}
				
				currentB -> next = tempB;
				tempB -> next = NULL;
            }
            
            int checkEdge(int A, int B)
            {
				bool flag = false;
                
				Node *current = list[A];
                
                while(current != NULL)
                {
                    if(current -> adjNode == B)
					{
                        flag = true;
						break;
					}
                    current = current -> next;
                }
				
				if(flag == false)
					return 0;
				else
				{
					current = list[B];
					
					while(current != NULL)
					{
						if(current -> adjNode == A)
							return (current -> weight);
					
						current = current -> next;
					}
				}
            }
            
            void display()
            {
                for(int i = 0 ; i < nodeCount ; ++i)
                {
                    Node *current = list[i];
                    
                    cout << i << " => ";
                    
                    while(current != NULL)
                    {    
                        cout << current -> adjNode << " (" << current -> weight << ") || ";
                        current = current -> next;
                    }
                    cout << endl;
                }
            }
            
            ~AdjacencyList()
            {
                for(int i = 0 ; i < nodeCount ; ++i)
				{
					Node *current = list[i];
					
					while(current != NULL)
					{
						Node *temp = current;
						current = current -> next;
						delete temp;
					}
				}
				delete[] list;
            }
};

int main()
{
    int N, A, B, W, choice, res;
    
    cout << "Enter the number of Nodes [Indexing will be ZERO BASED]\n";
    cin >> N;
    
    AdjacencyList adjList(N);
    
    while(1)
    {
        cout << "\n\nEnter 1 to Add Edge\n";
        cout << "Enter 2 to Check if Edge Exists and Check Weight/Cost\n";
        cout << "Enter 3 to Display Graph Information\n";
        cout << "Enter 4 to Exit\n";
        
        cin >> choice;
        
       if(choice == 1)
       {
           cout << "Enter the Origin Node followed by the Destination Node to Add\n";
           cin >> A >> B;
           
           cout << "Enter the Weight/Cost\n";
           cin >> W;
           
           adjList.addEdge(A, B, W);
       }
       else if(choice == 2)
       {
           cout << "Enter the Origin Node followed by the Destination Node to Check\n";
           cin >> A >> B;
           
           res = adjList.checkEdge(A, B);
           if(res != 0)
               cout << "\nEdge Exists between " << A << " " << B << " & " << B << " " << A << " with Weight/Cost : " << res << endl;
           else
               cout << "\nEdge Does NOT Exist\n";
       }
       else if(choice == 3)
           adjList.display();
       else
           break;
    }
    return 0;
}