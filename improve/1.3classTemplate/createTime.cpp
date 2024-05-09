#include<iostream>
using namespace std;
// 类模板中成员函数和普通类中成员函数创建时机是有区别的：
// 1. 普通类中的成员函数一开始就可以创建 
// 2. 类模板中的成员函数在调用时才创建

class Person1
{
	public:
	void showPerson1()
	{
		cout << "Person1 show" << endl;
	}
};
class Person2
{
	public:
	void showPerson2()
	{
		cout << "Person2 show" << endl;
	}
};

template<class T>
class MyClass
{
	public:

	T obj;

	void func1()
	{
		obj.showPerson1();
	}
	void func2()
	{
		obj.showPerson2();
	}
};

void test01()
{
	// 因为类模板的成员函数只有在调用时才创建，因此正常编译不会出错
	MyClass<Person1> m;
	m.func1();
	//m.func2(); // 错误表达
}

int main(){
	test01();	
	system("ls");

	return 0;

}
