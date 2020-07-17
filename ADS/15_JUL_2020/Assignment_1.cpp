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
            
            LinkedList() { head = NULL ;}
            
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
                    current = current -> next;
                
                current -> next = temp;
                
                temp -> next = NULL;
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
            
};

int main()
{
    int N;
    
    LinkedList list;
    
    cin >> N;
    
    while(N != 0)
    {
        if(list.searchList(N) != false)
            cout << "Duplicate Entry of : " << N << endl;
        else
            list.insertAtEnd(N);
        
        cin >> N;
    }
       
    return 0;
}