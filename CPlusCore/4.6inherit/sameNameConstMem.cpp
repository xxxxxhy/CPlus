#include<iostream>
using namespace std;
// 问题：继承中同名的静态成员在子类对象上如何进行访问

// 静态成员和非静态成员出现同名，处理方式一致
// 1. 访问子类同名成员，直接访问即可
// 2. 访问父类同名成员，需要加作用域

class Base
{
	public:
		Base()
		{

		}

		static void func()
		{
			cout << "Base func" <<endl; 
		}
		
		static int m_A;
};

int Base::m_A=100;

class Son :public Base{
	public:
		static void func()
		{
			cout << "Son func" << endl;
		}
		static int m_A;
};
int Son::m_A = 200;

void test01()
{
	// 1. 静态成员第一种访问方式通过对象访问
	Son s;
	cout << "m_A is " << s.m_A <<endl;
	cout << "Base m_A is " << s.Base::m_A << endl;
	// 2. 通过类名访问
	cout << "class name" << endl;
	cout << "Son m_A" << Son::m_A << endl;
	cout << "Base m_A" << Base::m_A << endl;
	cout << "Base m_A 2 " << Son::Base::m_A << endl;
}

void test02()
{
	Son s;
	s.func();
	s.Base::func();


	Son::func();
	Son::Base::func();
};

int main(){
	
	test01();
	test02();
	system("ls");

	return 0;

}
