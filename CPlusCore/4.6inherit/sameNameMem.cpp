#include<iostream>
using namespace std;

// 当子类和父类出现同名成员，如何通过子类对象，访问到子类或父类中同名的数据

// 访问子类同名成员，直接访问即可
// 访问父类同名成员，需要加作用域 

class Base
{
	public:
		Base()
		{
			m_A = 100;
		}
		
		void func()
		{
			cout << "Base func" << endl;
		}
		void func(int a)
		{

		}
		int m_A;
};

class Son :public Base{
	public:
		Son()
		{
			m_A = 200;
		}
		void func()
		{
			cout << "Son func" << endl;
		}

		int m_A;
};

void test01()
{
	Son s;
	cout << "m_A is " << s.m_A << endl;
	cout << "Base m_A is " << s.Base::m_A << endl;
}

void test02()
{
	Son s;
	s.func();
	s.Base::func();
	// s.func(100); // 无法访问到父类中的同名重载函数
	// 若子类中出现和父类同名的成员函数，子类的同名成员函数会隐藏掉父类中所有同名成员函数（包括重载函数）
	
}

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
