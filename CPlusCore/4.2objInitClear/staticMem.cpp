#include<iostream>
using namespace std;
// 静态成员就是在成员变量和成员函数前加上static关键字，称为静态成员
// 
// 静态成员分为：
//
// 1. 静态成员变量
// 1.1 所有对象共享同一份数据 
// 1.2 在编译阶段分配内存
// 1.3 类内声明，类外初始化
// 2. 静态成员函数
// 2.1 所有对象共享同一个函数
// 2.2 静态成员函数只能方位静态成员变量
//

class Person
{
	public:
		static void func()
		{	
			m_A = 100; // 静态成员函数可访问静态成员变量
			//m_B = 200;  不可访问非静态成员变量 无法区分到底是哪个对象的属性
			cout << "static func use" << endl;
		}
		static int m_A; // 静态成员变量
		int m_B; // 非静态成员变量

		// 静态成员函数也是有访问权限的
	private:
		static void func2()
		{
			cout << "static func2 use" << endl;
		}
};

int Person::m_A = 0;

void test01()
{
	// 1.通过对象访问
	Person p;
	p.func();
	// 2. 通过类名访问
	Person::func();
	// Person::func2(); 类外访问不到私有的静态成员函数
};

int main(){
	test01();
	system("ls");

	return 0;

}
