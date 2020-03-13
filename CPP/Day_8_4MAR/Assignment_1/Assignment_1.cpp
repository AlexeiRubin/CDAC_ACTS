#include<iostream>

using namespace std;

struct Points
{
	int x, y;
};

class Shapes
{
	protected :
		
		Points *pts;
		int N;
		int ShapeType;

	public :
		
		Shapes(int N, int type)
		{
			pts = new Points[N];
			ShapeType = type;
			this->N = N;
		}

		virtual void move(int x, int y)
		{
			cout << "Moving Points\n";

			for(int i = 0 ; i < N ; ++i)
			{
				pts[i].x += x;
				pts[i].y += y;
			}

			cout << "Points moved to :\n";

			for(int i = 0 ; i < N ; ++i)
			{
				cout << pts[i].x << " " << pts[i].y << "\n";
			}

		}

		int getType()
		{
			return ShapeType;
		}
		
		virtual void setPoints();

		virtual void DrawShape();

		virtual void EraseShape();

		~Shapes() { }
};

class Lines : public Shapes
{	
	public :
		
		Lines(int N, int type) : Shapes(N, type) { }

		void setPoints()
		{
			cout << "Enter the values of the Line\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y;
			}
			
			cout << endl;
		}

		void DrawShape()
		{
			cout << "Line Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;
		}
		
		void EraseShape()
		{	
			cout << "Erasing Line\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;

			delete[] pts;
		}
};

class Quads : public Shapes
{
	public :
		
		Quads(int N, int type) : Shapes(N, type) { }

		void setPoints()
		{
			cout << "Enter the values of the Quadrilateral\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}

			cout << endl;
		}
		
		void DrawShape()
		{
			cout << "Quadrilateral Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;
		}
		
		void EraseShape()
		{
			cout << "Erasing Quadrilateral\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;
			
			delete[] pts;
		}
};

class Polygs : public Shapes
{
	public :
		
		Polygs(int N, int type) : Shapes(N, type) { }
		
		void setPoints()
		{
			cout << "Enter the values of the Polygon\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}

			cout << endl;
		}
		void DrawShape()
		{
			cout << "Polygon Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;
		}
		
		void EraseShape()
		{
			cout << "Erasing Polygon\n";

			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << "\t" << pts[i].y << "\n"; 
			}

			cout << endl;
			
			delete[] pts;
		}
};

int main()
{
	int choiceOfShape, opType = 0, xT, yT, nS, num, type;

	cout << "Enter the number of shapes\n";
	cin >> num;

	Shapes **arr = new Shapes * [num];

	for(int i = 0 ; i < num ; ++i)
	{
		cout << "Enter 1 for Line\n";
		cout << "Enter 2 for Quadrilateral\n";
		cout << "Enter 3 for Polygon\n";

		cin >> choiceOfShape;

		if(choiceOfShape == 1)
		{
			Lines *l = new Lines(2, choiceOfShape);
			arr[i] = l;
		}

		else if(choiceOfShape == 2)
		{
			Quads *q = new Quads(4, choiceOfShape);
			arr[i] = q;
		}

		else if(choiceOfShape == 3)
		{
			cout << "Enter the number of sides of the Polygon\n";
			cin >> nS;

			Polygs *py = new Polygs(nS, choiceOfShape);
			arr[i] = py;
		}
	}

	cout << "Enter the co-ordinates of the respective shapes\n";

	for(int i = 0 ; i < num ; ++i)
	{
		Shapes *s = arr[i];
		
		type = s->getType();
		
		if(type == 1)
		{
			arr[i]->setPoints();
		}

		else if(type == 2)
		{
			arr[i]->setPoints();
		}

		else
		{
			arr[i]->setPoints();
		}
	}

	cout << "Performing operations on the entered shapes\n";

	while(opType != 4)
	{
		cout << "Enter 1 to Draw\n";
		cout << "Enter 2 to Move\n";
		cout << "Enter 3 to Erase\n";
		cout << "Enter 4 to Exit\n";

		cin >> opType;
		
		if( (opType == 4) || (num == 0) )
		{
			cout << "Exiting the program \n";
			break;
		}

		else if(opType == 1)
		{
			for(int i = 0 ; i < num ; ++i)
			{
				Shapes *s = arr[i];
		
				type = s->getType();

				if(type == 1)
				{
					arr[i]->DrawShape();
				}
		
				else if(type == 2)
				{
					arr[i]->DrawShape();
				}
		
				else
				{
					arr[i]->DrawShape();
				}
			}
		}
	
		else if(opType == 2)
		{
			cout << "Enter X Translation\n";			
			cin >> xT;

			cout << "Enter Y Translation\n";
			cin >> yT;
		
			for(int i = 0 ; i < num ; ++i)
			{
				Shapes *s = arr[i];
		
				type = s->getType();

				if(type == 1)
				{
					arr[i]->move(xT, yT);
				}
		
				else if(type == 2)
				{
					arr[i]->move(xT, yT);
				}
		
				else
				{
					arr[i]->move(xT, yT);
				}
			}
		}

		else if(opType == 3)
		{
			--num;
			
			if(num < 0)
				break;

			Shapes *s = arr[num];
		
			type = s->getType();
		
			if(type == 1)
			{
				arr[num]->EraseShape();
			}
		
			else if(type == 2)
			{
				arr[num]->EraseShape();
			}
		
			else
			{
				arr[num]->EraseShape();
			}

			delete arr[num];
		}
	}
	return 0;
}
