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
				Node *temp = new Node(list[A], B, W);
				
				if(list[A] == NULL)
				{
				    list[A] = temp;
				    return;
				}
				
				Node *current = list[A];
				
				while(current -> next != NULL)
				{
				    current = current -> next;
				}
				
				current -> next = temp;
				temp -> next = NULL;
            }
            
            int checkEdge(int A, int B)
            {
                Node *current = list[A];
                
                while(current != NULL)
                {
                    if(current -> adjNode == B)
                        return (current -> weight);
                        
                    current = current -> next;
                }
                
                return 0;
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
            
            void printDFSHelper(int sourceNode, bool isVisited[])
            {
                if(isVisited[sourceNode])
                    return;
                    
                cout << sourceNode << " --> ";
                isVisited[sourceNode] = true;
                
                for(int i = 0 ; i < nodeCount ; ++i)
                {
                    Node *temp = list[sourceNode];
                    
                    while(temp != NULL)
                    {
                        printDFSHelper(temp -> adjNode, isVisited);
                        temp = temp -> next;
                    }
                }
            }
            
            void printDFS(int sourceNode)
            {
                bool *isVisited = new bool[nodeCount];
                
                for(int i = 0 ; i < nodeCount ; ++i)
                    isVisited[i] = false;
                    
                printDFSHelper(sourceNode, isVisited);    
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
    int N, A, B, W, choice, res, source;
    
    cout << "Enter the number of Nodes [Indexing will be ZERO BASED]\n";
    cin >> N;
    
    AdjacencyList adjList(N);
    
    while(1)
    {
        cout << "\n\nEnter 1 to Add Edge\n";
        cout << "Enter 2 to Check if Edge Exists and Check Weight/Cost\n";
        cout << "Enter 3 to Display Graph Information\n";
        cout << "Enter 4 to Traverse the Graph using DFS\n";
        cout << "Enter 5 to Exit\n";
        
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
               cout << "\nEdge Exists between " << A << " " << B << " with Weight/Cost : " << res << endl;
           else
               cout << "\nEdge Does NOT Exist\n";
       }
       else if(choice == 3)
       {
           cout << "Following is the Graph Information\n";
           adjList.display();
       }
       else if(choice == 4)
       {
           cout << "Enter the Source Node\n";
           cin >> source;
           
           cout << "Following is the DFS Traversal with Source Node : " << source << endl;
           adjList.printDFS(source);
       }
       else
           break;
    }
    return 0;
}