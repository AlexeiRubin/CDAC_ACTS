#include<iostream>

using namespace std;

int main()
{
    int U, r, size, loc, locR;
    
    cout << "Enter the upper limit of the Range\n";
    cin >> U;
    
    size = (U / 8);
    r = (U % 8);
    
    if(r != 0)
        ++size;
    
    unsigned char data[size] = { 0 };
    
    unsigned char mask[8] = { 0x01, 0x02, 0x04, 0x08,
                              0x10, 0x20, 0x40, 0x80 };
                             
    int N;
    
    cin >> N;
    
    while(N != 0)
    {
        loc = (N / 8);
        locR = (N % 8);
        
        if(locR == 0)
        {
            if( (data[loc] & mask[locR]) )
                cout << "Duplicate entry at : " << N << endl;
        }
        else
        {
            if( (data[loc] & mask[locR - 1]) )
                cout << "Duplicate entry at : " << N << endl;
            else
                data[loc] = (data[loc] | mask[locR- 1]);
        }
        
        cin >> N;
    }
    
    return 0;
}