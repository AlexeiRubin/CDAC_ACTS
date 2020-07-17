#include<iostream>

using namespace std;

const int HT_SIZE = 100;

struct Bucket
{
    bool isEmpty;
    int key;

} hashTable[HT_SIZE];

int hashFunctionMod(int key)
{
    return (key % HT_SIZE);
}

int main()
{
    int N, bucketId;
    
    for(int i = 0 ; i < HT_SIZE ; ++i)
        hashTable[i].isEmpty = true;
    
    cin >> N;
    
    while(N >= 0)
    {
        bucketId = hashFunctionMod(N);
        
        if(hashTable[bucketId].isEmpty == true)
        {
                hashTable[bucketId].key = N;
                hashTable[bucketId].isEmpty = false;
        }
        else
        {
            if(hashTable[bucketId].key == N)
                cout << "Duplicate entry of : " << N << endl;
            else
                cout << "Collision of " << N << " occured at BucketId : " << bucketId << endl;
        }
        
        cin >> N;
    }
    
    return 0;
}