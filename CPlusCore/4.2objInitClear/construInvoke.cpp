#include<iostream>
using namespace std;
// 默认情况下，C++编译器至少给一个类添加3个函数
// 1. 默认构造函数（无参，函数体为空）
// 2. 默认析构函数（无参，函数体为空）
// 3. 默认拷贝构造函数，对属性进行值拷贝
//
// 构造函数调用规则如下：
// 1. 如果用户定义有参构造函数，c++不在提供默认无参构造，但是会提供默认拷贝构造
// 2. 如果用户定义拷贝构造函数，c++不会再提供其他构造函数
//

class Person
{
	public:
		Person()
		{
			cout << "Person默认"<< endl;
		}
		Person(int age)
		{
			cout << "有参" << endl;
			m_Age = age;
		}
		Person(const Person & p)
		{
			cout << "拷贝" << endl;
			m_Age = p.m_Age;
		}
		~Person()
		{
			cout << "析构" << endl;
		}
		int m_Age;

};

void test01()
{
	Person p;
	p.m_Age = 18;
	Person p2(p);
	cout << "p2的年龄为：" << p2.m_Age << endl;
};

int main(){
	test01();
	system("ls");

	return 0;

}
