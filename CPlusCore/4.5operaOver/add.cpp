#include<iostream>
using namespace std;
// 运算符重载概念：对已有的运算符重新进行定义，赋予其另一种功能，以适应不同的数据类型
//
// 加号运算符重载
// 作用：实现两个自定义数据类型相加的运算
// 
// 内置的数据类型的表达式的运算符是不可能改变（即不可能被重载）
// 不要滥用运算符重载
//
// 1. 成员函数重载+号
// 成员函数本质调用 Person p3 = p1.operator+(p2);
class Person
{
	public:
		Person operator+(Person &p)
		{
			Person temp;
			temp.m_A = this->m_A+p.m_A;
			temp.m_B = this->m_B+p.m_B;
			return temp;
		}
		Person operator+(int l)
		{
			Person temp;
			temp.m_A = this->m_A + l;
			temp.m_B = this->m_B + l/2;
			return temp;
		}
		int m_A;
		int m_B;

};

// 2. 全局函数重载-号
// 全局函数重载本质调用 Person p4 = operator-(p1,p2);
//
// 运算符重载也可以发生函数重载 Person p3 = p1 + 10 // Person + int
Person operator-(Person &p1,Person &p2)
{
	Person temp;
	temp.m_A = p1.m_A - p2.m_A;
	temp.m_B = p1.m_B - p2.m_B;
	return temp;
};

void test01()
{
	Person p1;
	p1.m_A = 10;
	p1.m_B = 10;
	Person p2;
	p2.m_A = 5;
	p2.m_B = 6;

	Person p3 = p1 + p2;

	cout << "p3.m_A=" << p3.m_A << endl;
	cout << "p3.m_B=" << p3.m_B << endl;

	Person p4 = p1 - p2;
	cout << "p4.m_A=" << p4.m_A << endl;
	cout << "p4.m_B=" << p4.m_B << endl;
	
	Person p5 = p1 + 10;
	cout << "p5.m_A=" << p5.m_A << endl;
	cout << "p5.m_B=" << p5.m_B << endl;
	

};

int main(){
	test01();
	system("ls");

	return 0;

}
