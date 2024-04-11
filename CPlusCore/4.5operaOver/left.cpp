#include<iostream>

using namespace std;
// 左移运算符重载

// 重载左移运算符配合友元可以实现输出自定义数据类型
//
class Person
{
	friend ostream & operator<<(ostream &out ,Person &p);
	public:
		// 利用成员函数重载 左移运算符
		// 不能利用成员函数重载<< 运算符，因为无法实现cout在左侧
		//int operator<<(Person &p)
		//{
		//}
		Person(int a, int b)
		{
			m_A = a;
			m_B = b;
		}
	private:
		int m_A;
		int m_B;
};
// 只能用全局函数重载左移运算符

ostream & operator<<(ostream &out ,Person &p)
{
	out << "m_A=" << p.m_A << " m_B = " << p.m_B << endl;
	return out; // 链式编程法则
};

void test01()
{
	Person p(10,10);
	//p.m_A = 10;
	//p.m_B = 10;

	cout << p << endl;
};

int main(){
	test01();
	system("ls");

	return 0;

}
