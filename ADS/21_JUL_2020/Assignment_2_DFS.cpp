#include<iostream>

using namespace std;

class AdjacencyMatrix
{
    int **matrix;
    int nodeCount;
    
    public :
            AdjacencyMatrix(int N) : nodeCount(N)
            {
                matrix = new int*[nodeCount];
                
                for(int i = 0 ; i < nodeCount ; ++i)
                {
                    matrix[i] = new int[nodeCount];
                    
                    for(int j = 0 ; j < nodeCount ; ++j)
                        matrix[i][j] = 0;
                }
            }
            
            void addEdge(int A, int B, int W = 1) { matrix[A][B] = matrix[B][A] = W; }
            
            int checkEdge(int A, int B)
            {
                if( (matrix[A][B] != 0) && (matrix[B][A] != 0) )
                    return matrix[A][B];
                else
                    return 0;
            }
            
            void display()
            {
                for(int i = 0 ; i < nodeCount ; ++i)
                {
                    for(int j = 0 ; j < nodeCount ; ++j)
                        cout << matrix[i][j] << " ";
                    cout << endl;
                }
            }
            
            void printDFSHelper(int sourceNode, bool isVisted[])
            {
                if(isVisted[sourceNode])
                    return;
                
                cout << sourceNode << " --> ";
                isVisted[sourceNode] = true;
                
                for(int i = 0 ; i < nodeCount ; ++i)
                {
                    if(matrix[sourceNode][i] != 0)
                        printDFSHelper(i, isVisted);
                }
            }
            
            void printDFS(int sourceNode)
            {
                bool *isVisted = new bool[nodeCount];
                
                for(int i = 0 ; i < nodeCount ; ++i)
                    isVisted[i] = false;
                    
                printDFSHelper(sourceNode, isVisted);
            }
            
            ~AdjacencyMatrix()
            {
                for(int i = 0 ; i < nodeCount ; ++i)
                    delete[] matrix[i];
                    
                delete[] matrix;
            }
};

int main()
{
    int N, A, B, W, choice, res, source;
    
    cout << "Enter the number of Nodes [Indexing will be ZERO BASED]\n";
    cin >> N;
    
    AdjacencyMatrix adjMat(N);
    
    while(1)
    {
        cout << "\n\nEnter 1 to Add Edge\n";
        cout << "Enter 2 to Check if Edge Exists and Check Weight/Cost\n";
        cout << "Enter 3 to Display Graph Information\n";
        cout << "Enter 4 to Traverse the Graph using DFS\n";
        cout << "Enter 5 to Check the Graph's Connectivity\n";
        cout << "Enter 6 to Exit\n";
        
        cin >> choice;
        
       if(choice == 1)
       {
           cout << "Enter the Origin Node followed by the Destination Node to Add\n";
           cin >> A >> B;
           
           cout << "Enter the Weight/Cost\n";
           cin >> W;
           
           adjMat.addEdge(A, B, W);
       }
       else if(choice == 2)
       {
           cout << "Enter the Origin Node followed by the Destination Node to Check\n";
           cin >> A >> B;
           
           res = adjMat.checkEdge(A, B);
           if(res != 0)
               cout << "\nEdge Exists between " << A << " " << B << " & " << B << " " << A << " with Weight/Cost : " << res << endl;
           else
               cout << "\nEdge Does NOT Exist\n";
       }
       else if(choice == 3)
       {
           cout << "Following is the Graph Information\n";
           adjMat.display();
       }
       else if(choice == 4)
       {
           cout << "Enter the Source Node\n";
           cin >> source;
           
           cout << "Following is the DFS Traversal with Source Node : " << source << endl;
           adjMat.printDFS(source);
       }
       else if(choice == 5)
           (adjMat.checkGraphConnection()) ? (cout << "The Graph is Strongly Connected\n") : (cout << "The Graph is Weakly Connected\n");
       else
           break;
    }
    return 0;
}