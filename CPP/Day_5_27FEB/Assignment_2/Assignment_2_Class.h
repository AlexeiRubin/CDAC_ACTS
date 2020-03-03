class MyString
{
	int len;
	char *str;

	public:
			//constructor
			MyString();

			//parametrized constructor
			MyString(const char *);

			//copy constructor for deep copy
			MyString(const MyString &);

/*			//assessor function to get length of string
			int getMyStringLength();


			//assessor function to get string
			char * getMyString();

			//mutator function to set the length of string
			void setMyStringLength();

			//mutator function to set the string
			void setMyString();
*/
			//to print data members
			void write();
			
			//overloaded [] operator
			//MyString operator [](MyString &);
			
			//overloaded + operator
			MyString operator + (MyString &);
			
			//overloaded = operator
			void operator = (MyString &);

			//overloaded == operator
			bool operator == (MyString &);
			
			//overloaded < operator
			bool operator < (MyString &);
			
			//overloaded > operator
			bool operator > (MyString &);
			
			//overloaded != operator
			bool operator != (MyString &);
			
			//overloaded <= operator
			bool operator <= (MyString &);
			
			//overloaded >= operator
			bool operator >= (MyString &);
			
			//destructor
			~MyString();
};
