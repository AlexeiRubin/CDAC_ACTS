class MyTime
{
	int myHour, myMin, mySec;

	public:
			//default constructor
			MyTime();
			
			//paramterized constructor
			MyTime(int, int, int);

			//mutator funtion to set value of myHour
			void setMyHour(int);

			//mutator funtion to set value of myMin
			void setMyMin(int);

			//mutator funtion to set value of mySec
			void setMySec(int);

			//assessor funtion to get value myHour
			int getMyHour();

			//assessor funtion to get value myMin
			int getMyMin();

			//assessor funtion to get value mySec
			int getMySec();
			
			//to read time from user
			void read();

			//to print the time
			void write();

			//overloaded = operator
			void operator = (MyTime);

			//overloaded == operator
			bool operator == (MyTime);

			//overloaded + operator
			MyTime operator + (MyTime);

			//overloaded ++ operator
			void operator ++ ();

			//overloaded -- operator
			void operator -- ();

			//overloaded [] operator

};
