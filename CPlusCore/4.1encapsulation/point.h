#pragma once
#include <iostream>
using namespace std;
class Point
{
	public:
		void set(int x,int y);
		int getX();
		int getY();
	private:
		int mX;
		int mY;
};
