#include<iostream>
#define MAX_OF_RANGE 100

using namespace std;

int main()
{
    int N;
    int arr[MAX_OF_RANGE] = { 0 };
    
    cin >> N;
       
    while(N != 0)
    {
        if(arr[N - 1] != 0)
            cout << "Duplicate Entry of : " << N << endl;
        else
            arr[N - 1] = N;
		
	cin >> N;
    }
       
    return 0;
}