#include <bits/stdc++.h> 
#define MAX_OF_RANGE 100

using namespace std;

int main()
{
    int N;
    
    bitset<MAX_OF_RANGE> arr;
    
    cin >> N;
    
    while(N != 0)
    {
        if(arr[N - 1] != 0)
            cout << "Duplicate Entry of : " << N << endl;
        else
            arr[N - 1] = 1;
        
        cin >> N;
    }
    
    return 0;
}