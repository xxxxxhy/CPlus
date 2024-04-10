#include<iostream>
using namespace std;
// C++中，类中的成员变量和成员函数分开存储
// 只有非静态成员变量才属于类的对象上
// 成员变量和成员函数分开存储
class Person
{
	
};
class Person1
{
	int m_A; // 非静态成员变量
};
class Person2
{
	int m_A; // 非静态成员变量
	static int m_B; // 静态成员变量
};
class Person3
{
	int m_A; // 非静态成员变量
	void func(){} // 非静态成员函数
};

int Person2::m_B = 0;


void test01()
{
	Person p;
	// 空对象占用内存空间为
	// C++编译器会给每个空对象也分配一个字节，是为了区分空对象占内存的位置
	// 空对象也应该有一个独一无二的内存地址
	cout << "size of p= " << sizeof(p) << endl;
};

void test02()
{
	Person1 p;
	cout << "size of p= " << sizeof(p) << endl;
	
};
void test03()
{
	Person2 p;
	cout << "size of p= " << sizeof(p) << endl;
};
void test04()
{
	Person3 p;
	cout << "size of p= " << sizeof(p) << endl;	
};



int main(){
	test01();	
	test02();
	test03();
	test04();
	system("ls");

	return 0;

}
