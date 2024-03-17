#include<iostream>
using namespace std;
#include "point.h"

class Circle
{
	private:
		int mR;
		Point mCenter;
	public:
		void set(int r,Point p)
		{
			mR = r;
			mCenter = p;
		}
		int getR()
		{
			return mR;
		}
		Point getCenter()
		{
			return mCenter;
		}
};

void isInCircle(Circle &c, Point &p)
{
	int dis = (c.getCenter().getX()-p.getX())*(c.getCenter().getX()-p.getX())+ (c.getCenter().getY()-p.getY())*(c.getCenter().getY()-p.getY());
	int rDis = c.getR()*c.getR();
	if (dis ==rDis)
	{
		cout << "on" << endl;
	}	
	else if(dis>rDis)
	{
		cout << "out" << endl;
	}
	else
	{
		cout << "in" << endl;
	}
}

int main(){
	Circle c1;
	Point p1;
	Point p1C;
	p1C.set(10,0);
	c1.set(10,p1C);
	p1.set(9,10);
	isInCircle(c1,p1);
	system("ls");

	return 0;

}
