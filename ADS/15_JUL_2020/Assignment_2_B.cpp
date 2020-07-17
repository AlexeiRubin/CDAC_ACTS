#include<iostream>
#define MAX_OF_RANGE 100

using namespace std;

int main()
{
    int N;
    bool arr[MAX_OF_RANGE] = { false };
    
    cin >> N;
       
    while(N != 0)
    {
        if(arr[N - 1] != false)
            cout << "Duplicate Entry of : " << N << endl;
        else
            arr[N - 1] = true;
		
	cin >> N;
    }
       
    return 0;
}