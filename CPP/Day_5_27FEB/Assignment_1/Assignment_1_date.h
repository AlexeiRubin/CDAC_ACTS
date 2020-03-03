class MyDate
{
	int myDate, myMonth, myYear;

	public:
			//default constructor
			MyDate();
			
			//paramterized constructor
			MyDate(int, int, int);

			//mutator funtion to set value of myDate
			void setMyDate(int);

			//mutator funtion to set value of myMonth
			void setMyMonth(int);

			//mutator funtion to set value of myYear
			void setMyYear(int);

			//assessor funtion to get value myDate
			int getMyDate();

			//assessor funtion to get value myMonth
			int getMyMonth();

			//assessor funtion to get value myYear
			int getMyYear();
			
			//to read date from user
			void read();

			//to print the date
			void write();

			//overloaded = operator
			void operator = (MyDate);

			//overloaded == operator
			bool operator == (MyDate);

			//overloaded + operator
			MyDate operator + (MyDate);

			//overloaded ++ operator
			void operator ++ ();

			//overloaded -- operator
			void operator -- ();

			//overloaded [] operator

};
