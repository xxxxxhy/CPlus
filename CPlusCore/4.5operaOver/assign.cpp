#include<iostream>
using namespace std;
// c++编译器至少给一个类添加4个函数
// 1. 默认构造函数
// 2. 默认析构函数
// 3. 默认拷贝构造函数
// 4. 赋值运算符 operator= 对属性进行值拷贝
// 如果类中有属性指向堆区，做赋值操作时也会出现深浅拷贝的问题

// 赋值运算符的重载
// 
class Person
{
	public:
		Person(int age)
		{
			m_Age = new int(age);
		}
		Person& operator=(Person &p)
		{
			// 编译器是提供浅拷贝即：m_Age = p.m_age;
			// 应该先判断是否有属性在堆区，若有则先释放干净，然后再深拷贝
			if (m_Age != NULL)
			{
				delete m_Age;
				m_Age = NULL;
			}
			// 深拷贝
			m_Age = new int(*p.m_Age);
			return *this;
		}
		~Person()
		{
			if (m_Age != NULL)
			{
				delete m_Age;
				m_Age = NULL;
			}
		}

	
		int *m_Age;
};

void test01()
{
	Person p1(18);
	Person p2(20);
	Person p3(30);
	p2 = p1; // 赋值操作
	cout << "p1's age is " << *p1.m_Age << endl;
	cout << "p2's age is " << *p2.m_Age << endl;
	p3 = p2 = p1;

	cout << "p1's age is " << *p1.m_Age << endl;
	cout << "p2's age is " << *p2.m_Age << endl;
	cout << "p3's age is " << *p3.m_Age << endl;
}

int main(){
	test01();
	int a = 10;
	int b = 20;
	int c = 30;
	c = b = a;
	cout << a << endl;
	cout << b << endl;
	cout << c << endl;
	system("ls");

	return 0;

}
