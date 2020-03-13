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
			this -> N = N;
		}

		~Shapes() { }

		void move(int x, int y)
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
		
		void DrawShape();

		void EraseShape();
		
		int getType()
		{
			return ShapeType;
		}
};

class Lines : public Shapes
{	
	public :
		
		Lines() : Shapes(N, type) { }

		void setPoints()
		{
			cout << "Enter the values of the points\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y;
			}
		}

		void DrawShape()
		{
			cout << "Line Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << " " << pts[i].y; 
			}
		}
		
		void EraseShape()
		{	
			cout << "Erasing Line\n";
			delete[] pts;
		}
};

class Quads : public Shapes
{
	public :
		
		Quads() : Shapes(N, type) { }

		void setPoints()
		{
			cout << "Enter the values of the points\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}
		}
		
		void DrawShape()
		{
			cout << "Quadrilateral Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << " " << pts[i].y; 
			}
		}
		
		void EraseShape()
		{
			cout << "Erasing Quadrilateral\n";
			delete[] pts;
		}
};

class Polygs : public Shapes
{
	public :
		
		Polygs() : Shapes(N, type) { }

		void setPoints()
		{
			cout << "Enter the values of the points\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}
		}
		void DrawShape()
		{
			cout << "Polygon Drawn as :\n";
			
			for(int i = 0 ; i < N ; ++i)
			{
				cout <<  pts[i].x << " " << pts[i].y; 
			}
		}
		
		void EraseShape()
		{
			cout << "Erasing Polygon\n";
			delete[] pts;
		}
};

int main()
{
	int choiceOfShape, opType, xT, yT, nS, count = 0, num, ind = 0;

	cout << "Enter the number of shapes\n";
	cin >> num;

	Shape **arr = new *[num];

	while(1)
	{
		cout << "Enter 1 for Line\n";
		cout << "Enter 2 for Quadrilateral\n";
		cout << "Enter 3 for Polygon\n";
		cout << "Enter 4 to show shapes\n";
		cout << "Enter 5 to Exit\n";

		cin >> choiceOfShape;
	
		if( (choiceOfShape == 5) || (ind == num) )
		{
			break;
		}
		else
		{
			if(choiceOfShape == 1)
			{
				Lines *l = new Line();
				arr[ind] = l;

				++ind;

				while(1)
				{
					cout << "Enter 1 to Draw\n";
					cout << "Enter 2 to Move\n";
					cout << "Enter 3 to Erase\n";
					cout << "Enter 4 to Exit\n";

					cin >> opType;
		
					if(opType == 4)
					{
						break;
					}

					else
					{
						switch(opType)
						{
							case 1:

								l->setPoints();
								l->DrawShape();

								break;
				
							case 2:
						
								cout << "Enter X Translation\n";
								cin >> xT;

								cout << "Enter Y Translation\n";
								cin >> yT;

								l->move(xT, yT);

								break;
				
							case 3:
						
										
								l->EraseShape();
								break;
						}
					}
				}
			}
			else if(choiceOfShape == 2)
			{	
				Quads *q = new Quads();

				arr[ind] = q;

				++ind;

				while(1)
				{
					cout << "Enter 1 for Draw\n";
					cout << "Enter 2 for Move\n";
					cout << "Enter 3 for Erase\n";
					cout << "Enter 4 to Exit\n";

					cin >> opType;
				
					if(opType == 4)
						break;
					else
					{
						switch(opType)
						{
							case 1:
	
								q->setPoints();
								q->.DrawShape();
	
								break;
				
							case 2:
						
								cout << "Enter X Translation\n";
								cin >> xT;

								cout << "Enter Y Translation\n";
								cin >> yT;

								q->move(xT, yT);

								break;
				
							case 3:
						
								q->EraseShape();
								break;
						}
					}
				}
			}
			else
			{
				cout << "Enter the Sides of the Polygon\n";
				cin >> nS;

				Polygs *py = new Polygs();
				
				arr[ind] = py;

				++ind;

				while(1)
				{
					cout << "Enter 1 for Draw\n";
					cout << "Enter 2 for Move\n";
					cout << "Enter 3 for Erase\n";
					cout << "Enter 4 to Exit\n";

					cin >> opType;
				
					if(opType == 4)
						break;
					else
					{
						switch(opType)
						{
							case 1:
	
								py->setPoints();
								py->DrawShape();
	
								break;
				
							case 2:
						
								cout << "Enter X Translation\n";
								cin >> xT;

								cout << "Enter Y Translation\n";
								cin >> yT;

								py->move(xT, yT);

								break;
				
							case 3:
						
								py->EraseShape();
								break;
						}
					}
				}
			}
		}
	}
	return 0;
}
