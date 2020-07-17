#include<iostream>

using namespace std;

int main()
{
    unsigned char data = 0;
    
    unsigned char mask[8] = { 0x01, 0x02, 0x04, 0x08,
                              0x10, 0x20, 0x40, 0x80 };
                             
    int N;
    
    cin >> N;
    
    while(N != 0)
    {
        if( (data & mask[N - 1]) )
            cout << "Duplicate entry at : " << N << endl;
        else
            data = (data | mask[N - 1]);
        
        cin >> N;
    }
    
    return 0;
}