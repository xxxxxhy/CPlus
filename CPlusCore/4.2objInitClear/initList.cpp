#include<iostream>
using namespace std;
// 作用：C++提供了初始化列表语法，用来初始化属性
// 语法： 构造函数():属性1(值1),属性2(值2)...()

class Person
{
	public:
		// 传统的初始化操作
		/*Person(int a, int b, int c)
		{
			m_A = a;
			m_B = b;
			m_C = c;
		}
		*/
		// 初始化列表初始化属性
		// 方式一，固定初始化属性
		//Person():m_A(10),m_B(20),m_C(30)
		//{
			
		//}
		//方式二
		Person(int a,int b, int c) :m_A(a),m_B(b),m_C(c)
		{
			
		}
		int m_A;
		int m_B;
		int m_C;
	
};

void test01()
{
	// Person p(10,20,30);
	// Person p;
	Person p(30,20,10);
	cout << "m_A = "<< p.m_A << endl; 
	cout << "m_B = "<< p.m_B << endl; 
	cout << "m_C = "<< p.m_C << endl; 
};



int main(){
	test01();
	system("ls");

	return 0;

}
