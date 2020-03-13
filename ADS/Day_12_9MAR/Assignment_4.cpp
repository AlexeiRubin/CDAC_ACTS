#include<iostream>

using namespace std;

class c2_stack 
{
	public:
			int *arr;
			int top1, top2;
			int N;

			c2_stack(int N)
			{
				arr = new int[N];
				top1 = 0;
				N = N;
				top2 = (N - 1);
			}

			void pushIntoStack1(int value)
			{
				if(top1 <= (top2 - 1))
				{
					arr[top1] = value;
					++top1;
				}
				else
					cout << "\nStack 1 Overflow\n";
			}

			void pushIntoStack2(int value)
			{	
				if(top2 >= (top1 + 1))
				{
					arr[top2] = value;
					--top2;
				}
				else
					cout << "\nStack 2 Overflow\n";
			}

			int popFromStack1()
			{
				if(top1 != 0)
				{
					--top1;
					int temp = arr[top1];
					arr[top1] = 0;
					return temp;
				}
				else
				{
					cout << "\nStack 1 Underflow\n";
					return 0;
				}
			}

			int popFromStack2()
			{
				if(top2 != (N - 1))
				{
					++top2;
					int temp = arr[top2];
					arr[top2] = 0;
					return temp;
				}
				else
				{
					cout << "\nStack 2 Underflow\n";
					return 0;
				}
			}

			bool isStack1Empty()
			{
				if(top1 == 0)
					return true;
				else
					return false;
			}

			bool isStack2Empty()
			{
				if(top2 == (N - 1))
					return true;
				else
					return false;
			}

			bool isStack1Full()
			{
				if(top1 == (top2 - 1))
					return true;
				else
					return false;
			}

			bool isStack2Full()
			{
				if(top2 == (top1 + 1))
					return true;
				else
					return false;
			}

			int topStack1()
			{
				int temp = top1;
				return arr[temp - 1];	
			}

			int topStack2()
			{
				int temp = top2;
				return arr[temp + 1];
			}

			~c2_stack()
			{
				delete[] arr;
			}
};

int main()
{
	bool res;
	int N, choice, value;

	cout << "Enter the size of the stack\n";
	cin >> N;

	c2_stack c2stk(N);

	while(1)
	{
		cout << "\nEnter 1 to push into stack1\n";
		cout << "Enter 2 to push into stack2\n";
		cout << "Enter 3 to pop from stack1\n";
		cout << "Enter 4 to pop from stack2\n";
		cout << "Enter 5 to peek into stack1\n";
		cout << "Enter 6 to peek into stack2\n";
		cout << "Enter 7 to check if stack1 is empty\n";	
		cout << "Enter 8 to check if stack2 is empty\n";
		cout << "Enter 9 to check if stack1 is full\n";
		cout << "Enter 10 to check if stack2 is full\n";
		cout << "Enter (-1) to Quit\n";

		cin >> choice;

		if(choice == -1)
			break;
		else
		{
			switch(choice)
			{
				case 1:
						cout << "\nEnter a value\n";
						cin >> value;
						c2stk.pushIntoStack1(value);
						
					break;
			
				case 2:
						cout << "\nEnter a value\n";
						cin >> value;
						c2stk.pushIntoStack2(value);
						
					break;
				
				case 3:
						value = c2stk.popFromStack1();
						if(value != 0)
							cout << "\nPopped out value from Stack 1 is : " << value << endl;
						
					break;
				
				case 4:
						value = c2stk.popFromStack2();
						if(value != 0)
							cout << "\nPopped out value from Stack 2 is : " << value << endl;
						
					break;
				
				case 5:	
						value = c2stk.topStack1();
						cout << "\nTop of Stack 1 is : " << value << endl;
					
					break;
				
				case 6:
						value = c2stk.topStack2();
						cout << "\nTop of Stack 2 is : " << value << endl;
					
					break;

				case 7:
						res = c2stk.isStack1Empty();
						
						if(res == true)
							cout << "\nStack 1 is Empty\n";
						else
							cout << "\nStack 1 is NOT Empty\n";

					break;
				
				case 8:
						res = c2stk.isStack2Empty();
						
						if(res == true)
							cout << "\nStack 2 is Empty\n";
						else
							cout << "\nStack 2 is NOT Empty\n";
					
					break;
				
				case 9:
						res = c2stk.isStack1Full();
						
						if(res == true)
							cout << "\nStack 1 is Full\n";
						else
							cout << "\nStack 1 is NOT Full\n";
					
					break;
				
				case 10:
						res = c2stk.isStack2Full();
						
						if(res == true)
							cout << "\nStack 2 is Full\n";
						else
							cout << "\nStack 2 is NOT Full\n";
					
					break;
			}
		}
	}

	return 0;
}
