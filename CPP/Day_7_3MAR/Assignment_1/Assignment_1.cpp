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
		}

		~Shapes()
		{
			delete[] pts;
		}

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
		
		Lines(int N, int type) : Shapes(N, type) { }

		void setPoints()
		{
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y;
			}
		}

		void DrawShape()
		{
			cout << "Draw Line\n";
		}
		
		void EraseShape()
		{	
			cout << "Erasing Line\n";
		}

		~Lines();
};

class Quads : public Shapes
{
	public :
		
		Quads(int N, int type) : Shapes(N, type) { }

		void setPoints()
		{
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}
		}
		
		void DrawShape()
		{
			cout << "Draw Quadrilateral\n";
		}
		
		void EraseShape()
		{
			cout << "Erasing Quadrilateral\n";
		}

		~Quads();
};

class Polygs : public Shapes
{
	public :
		
		Polygs(int N, int type) : Shapes(N, type) { }

		void setPoints()
		{
			for(int i = 0 ; i < N ; ++i)
			{
				cin >> pts[i].x >> pts[i].y; 
			}
		}
		void DrawShape()
		{
			cout << "Draw Polygon\n";
		}
		
		void EraseShape()
		{
			cout << "Erasing Polygon\n";
		}

		~Polygs();
};

int main()
{
	int choiceOfShape, opType, xT, yT, nS;

	while(1)
	{
		cout << "Enter 1 for Line\n";
		cout << "Enter 2 for Quadrilateral\n";
		cout << "Enter 3 for Polygon\n";
		cout << "Enter 4 to Exit\n";

		cin >> choiceOfShape;
	
		if(choiceOfShape == 4)
			break;
		else
		{
			if(choiceOfShape == 1)
			{
				Lines l(2, choiceOfShape);
			}
			else if(choiceOfShape == 2)
			{	
				Quads q(4, choiceOfShape);
			}
			else
			{
				cout << "Enter the Sides of the Polygon\n";
				cin >> nS;

				Polygs py(nS, choiceOfShape);
			}
			
			switch(choiceOfShape)
			{
				case 1:

					while(1)
					{
						cout << "Enter 1 to Draw\n";
						cout << "Enter 2 to Move\n";
						cout << "Enter 3 to Erase\n";
						cout << "Enter 4 to Exit\n";

						cin >> opType;
			
						if(opType == 4)
							break;
						else
						{
							switch(opType)
							{
								case 1:
	
									l.setPoints();
									l.DrawShape();
	
									break;
				
								case 2:
						
									cout << "Enter X Translation\n";
									cin >> xT;

									cout << "Enter Y Translation\n";
									cin >> yT;

									l.move(xT, yT);

									break;
				
								case 3:
						
									l.EraseShape();
									break;
							}
						}
					}

					break;
		
				case 2:

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
	
									q.setPoints();
									q.DrawShape();
	
									break;
				
								case 2:
						
									cout << "Enter X Translation\n";
									cin >> xT;

									cout << "Enter Y Translation\n";
									cin >> yT;

									q.move(xT, yT);

									break;
				
								case 3:
						
									q.EraseShape();
									break;
							}
						}
					}

					break;
		
				case 3:
			
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
	
									py.setPoints();
									py.DrawShape();
	
									break;
				
								case 2:
						
									cout << "Enter X Translation\n";
									cin >> xT;

									cout << "Enter Y Translation\n";
									cin >> yT;

									py.move(xT, yT);

									break;
				
								case 3:
						
									py.EraseShape();
									break;
							}
						}
					}

					break;
			}
		}
	}
	return 0;
}
