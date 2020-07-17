#include<iostream>

using namespace std;

struct Bucket
{
	int key;
	bool isEmpty;
	
	Bucket()
	{
		key = 0;
		isEmpty = true;
	}
};

class HashTable
{
	Bucket *table;
	int size;

	public :
			HashTable(int N) : size(N) { table = new Bucket[size]; }
	
			bool addToTable(int N)
			{
				int bucketId = hashFunctionMod(N);
				int temp = bucketId;
				
				while(bucketId < size)
				{
					if(table[bucketId].isEmpty)
					{
						table[bucketId].key = N;
						table[bucketId].isEmpty = false;
						return true;
					}
					else
					{
						++bucketId;
						
						if(bucketId == temp)
							return false;
						
						if(bucketId == size)
							bucketId %= size;
					}
				}
				return false;
			}
			
			int searchTable(int item)
			{
				int bucketId = hashFunctionMod(item);
				int temp = bucketId;
				
				while(bucketId < size)
				{
					if(table[bucketId].key == item)
						return bucketId;
					else
					{
						++bucketId;
						
						if(bucketId == temp)
							return (-1);
						
						if(bucketId == size)
							bucketId %= size;
					}
				}
				return (-1);
			}
			
			void displayTable()
			{
				for(int i = 0 ; i < size ; ++i)
					cout << "\nBucket ID : " << i << " ---- " << table[i].key << endl;
			}
			
			int hashFunctionMod(int key) { return (key % size); }
	
			~HashTable() { delete[] table; }
};

int main()
{
	HashTable ht(10);
    
	int N, choice, srch;
	
    while(1)
    {
		cout << "\nEnter 1 to Bucket a Number\n";
		cout << "Enter 2 to Search a Number\n";
		cout << "Enter 3 to Display the Table\n";
		cout << "Enter 4 to Exit\n\n";
		
		cin >> choice;
		
		if(choice == 1)
		{
			cout << "Enter the Number : ";
			cin >> N;
			
			if(ht.searchTable(N) != (-1))
				cout << "Duplicate Entry of : " << N << endl;
			else
			{	
				if(ht.addToTable(N))
					cout << "Number bucketed\n\n";
				else
					cout << "\nTable is Full\n\n";
			}
		}
		else if(choice == 2)
		{
			cout << "Enter the element to Search: ";
			cin >> srch;
			
			srch = ht.searchTable(srch);
			
			if(srch != (-1))
				cout << "Element Found at Bucket ID : " << srch << endl;
			else
				cout << "Element NOT Found\n";
        	}
		else if(choice == 3)
		{
			ht.displayTable();
		}
		else if(choice == 4)
			break;
    }
    return 0;
}
