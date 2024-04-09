#include<iostream>
using namespace std;
// 两种分类方式：
// 按参数分为：有参构造(默认构造)和无参构造
// 按类型分为：普通构造和拷贝构造
//
// 三种调用方式：
// 括号法
// 显示法
// 隐式转换法
//

class Person
{
	public:
	
		Person()
		{
			cout << "构造" << endl;
		}	
	
	Person(int a)
	{
		age = a;
		cout << "有参" << endl;
	}
	
	Person(const Person &p)
	{
		age = p.age;
		cout << "拷贝" << endl;
	}

	~Person()
	{
		cout << "析构" << endl;
	}
	int age;
};

void test01()
{
	// 括号法
	Person p; // 默认构造函数的调用
	Person p2(10); //有参构造函数
	Person p3(p2);
	cout << "p2's age is" << p2.age << endl;
	cout << "p3's age is" << p3.age << endl;
	// 注意事项1
	// 调用默认构造函数时，不要加()
	Person p1();
	// 因为上行代码，编译器会认为是一个函数的声明
	
	//显示法
	Person p4;
	Person p5 = Person(10);
	Person p6 = Person(p5);
	cout << "p5's age is" << p5.age << endl;
	cout << "p6's age is" << p6.age << endl;
	Person(10);
	// Person(10) // 匿名对象 特点：当前行执行结束后，系统会立即回收掉匿名对象
	cout << "aaaaa" << endl;
	// 注意事项：
	// 不要利用拷贝构造函数初始化匿名对象
	// 错误表达 Person(p5);
	
	// 隐式转换法
	Person p7 = 10; // 相当于写了 Person p7 =Person(10)
	Person p8 = p7; 
};


int main(){
	test01();
	

	system("ls");

	return 0;

}
