#include<iostream>
using namespace std;
// 案例1 设计立方体类
// 求立方体面积和体积
// 分别用全局函数和成员函数判断两个立方体是否相等

class Cube
{
	private:
		int m_L;
		int m_W;
		int m_H;
	public:
		void set(int l,int w, int h)
		{
			m_L = l;
			m_W = w;
			m_H = h;
		}
		int getL()
		{
			return m_L;
		}
		int getW()
		{
			return m_W;
		}
		int getH()
		{
			return m_H;
		}
		int calcuS()
		{
			return 2*m_L*m_W+2*m_W*m_H+2*m_L*m_H;
		}
		int calcuV()
		{
			return m_L*m_W*m_H;
		}
		bool isSameByClass(Cube &c)
		{
			if(m_L == c.getL() && m_W == c.getW() && m_H == c.getH())
			{
				return true;
			}
			return false;
		}	
};
bool isSame(Cube &c1,Cube &c2)
{
	if(c1.getL() == c2.getL() && c1.getW() == c2.getW() && c1.getH() == c2.getH())
	{
		return true;
	}
	
	return false;
};

int main(){
	Cube c1;
	c1.set(10,9,8);
	
	cout << "c1 S is:" << c1.calcuS() << endl;
	cout << "c1 V is:" << c1.calcuV() << endl;
	
	Cube c2;
	c2.set(10,9,8);
	bool ret = isSame(c1,c2);
	if (ret)
	{
		cout << "c1 == c2" << endl;
	}
	else
	{
		cout << "c1!=c2" << endl;
	}
	ret = c1.isSameByClass(c2);
	if (ret)
	{
		cout << "c1 == c2" << endl;
	}
	else
	{
		cout << "c1!=c2" << endl;
	}

	system("ls");

	return 0;

}
