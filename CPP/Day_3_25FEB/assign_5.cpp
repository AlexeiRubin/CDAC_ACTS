#include<iostream>

using namespace std;

class complex
{
		float img;
		float real;

	public:

		complex()
		{
			real = 0;
			img = 0;
		}

		complex(int a, int b) 
		{
			real = a;
			img = b;

		}

		void read()
		{
			cout << "Enter Complex Numbers\n";
			cin >> real >> img;
		}

		void Add (complex c)
		{
			real += c.real;
			img += c.img;
		}

		void sub (complex c3)
		{
			real -= c3.real;
			img -= c3.img;
		}

		void write()
		{
			cout << real << " " << img << "i\n";
		}
};

int main()
{
	complex c1, c2(5, 78);

	c1.write();
	c2.write();

	c1.read();
	c2.read();
	
	c1.Add(c2);
	c1.write();
	
	c1.sub(c2);
	c1.write();

	return 0;
}
