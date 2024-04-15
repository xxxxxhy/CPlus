#include<iostream>
using namespace std;

// C++ 允许一个类继承多个类

// 语法： class 子类:继承方式 父类1, 继承方式 父类2...

// 多继承可能会引发父类中有同名成员出现，需要加作用域区分
// C++实际开发中不建议用多继承

class Base1
{
	public:
		Base1()
		{
			m_A = 100;
			m_B = 100;
		}
		int m_A;
		int m_B;
};

class Base2
{
	public:
		Base2()
		{
			m_B = 200;
		}
		int m_B;
};

class Son:public Base1,public Base2{
	public:
		Son()
		{
			m_C = 300;
			m_D = 400;
		}
		int m_C;
		int m_D;
};

void test01()
{
	Son s;
	cout << "sizeif Son = " << sizeof(s) << endl;
	cout << "m_A is " << s.m_A << endl;
	cout << "m_B is " << s.Base1::m_B << endl; // 两个父类中同名成员容易导致二义性出现，指定好作用域即可
}

int main(){
	test01();
	system("ls");

	return 0;

}
