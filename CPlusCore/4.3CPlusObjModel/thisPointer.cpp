#include<iostream>
using namespace std;
// 每一个非静态成员函数只会诞生一份函数实例，也就是说多个同类型的对象会共用一块代码
// 问题是 这一块的代码如何区分是哪个对象调用的呢
//
// C++通过提供特殊的对象指针，this指针，解决上述问题，this指针指向被调用的成员函数所属的对象
//
// this指针是隐含每一个非静态成员函数的内的一种指针
// this指针不需要定义，直接使用即可
//
// this指针用途：
// 1. 当形参和成员变量同名时，可用this进行区分
// 2. 在类的非静态成员函数中返回对象本身，可用 return *this
//


class Person
{
	public:
		Person(int age)
		{
			age = age;
		}
		
		int age;
};
class Person1
{
	public:
		Person1(int age)
		{
			// this指针指向被调用的成员函数所属对象
			this->age = age;
		}
		
		int age;
};
class Person2
{
	public:
		Person2(int age)
		{
			// this指针指向被调用的成员函数所属对象
			this->age = age;
		}
		void PersonAddAge(Person2 &p)
		{
			this->age+=p.age;
		}
		Person2& PersonAddAge2(Person2 &p)
		{
			this->age += p.age;
			// this是指向对象的指针，而*this指向的就是这个对象的本体
			return *this;
		}
		int age;
};



void test01()
{
	Person p1(18);
	cout << "p1's age is " << p1.age << endl;
};
void test02()
{
	Person1 p1(18);
	cout << "p1's age is " << p1.age << endl;
};

void test03()
{
	Person2 p1(18);
	Person2 p2(10);

	p2.PersonAddAge(p1);
	
	cout << "p2's age is " << p2.age << endl;
	// 链式编程思想	
	p2.PersonAddAge2(p1).PersonAddAge2(p1).PersonAddAge2(p1);
	cout << "p2's age is " << p2.age << endl;

};



int main(){
	test01();
	test02();
	test03();
	system("ls");

	return 0;

}
