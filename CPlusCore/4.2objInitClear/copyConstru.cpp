#include<iostream>
using namespace std;
// C++ 拷贝构造函数调用时机通常有三种情况
// 1. 使用一个已经创建完毕的对象来初始化一个新对象
// 2. 值传递的方式给函数参数传值
// 3. 以值方式返回局部对象
//
class Person
{
	public:
		Person()
		{
			cout << "gouzao" << endl;
		}
		Person(int age)
		{
			cout << "youcan" << endl;
			m_Age = age;
		}
		Person(const Person & p)
		{
			cout << "kaobei" << endl;
			m_Age = p.m_Age;
		}
		~Person()
		{
			cout << "xigou" << endl;
		}
		int m_Age;

};

void test01()
{
	Person p1(20);
	Person p2(p1);
}

void doWork(Person p)
{

}

void test02()
{
	Person p;
	doWork(p);

}

Person doWork2()
{
	Person p1;
	cout << (int*)&p1 << endl;
	return p1;
}
// 第三种拷贝构造函数并没有产生调用，为什么？？？？？？？？？？？？？？
void test03()
{
	Person p = doWork2();
	cout << (int*)&p << endl;
}

int main(){
	test01();
	test02();
	test03();
	system("ls");

	return 0;

}
