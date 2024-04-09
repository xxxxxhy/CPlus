#include<iostream>
using namespace std;
// 浅拷贝：简单的赋值拷贝操作
// 深拷贝：在堆区重新申请空间，进行拷贝操作
//
class Person
{
	public:
		Person()
		{
			cout << "默认" << endl;
		}
		Person(int age, int height)
		{
			cout << "有参" << endl;
			m_Age = age;
			m_Height = new int(height);
		}
		~Person()
		{
			// 析构代码，将堆区开辟的内存做释放操作
			if (m_Height != NULL)
			{
				delete m_Height;
				m_Height = NULL;
			}
			cout << "析构" << endl;
		}
		int m_Age;
		int *m_Height;
};
class Person1
{
	public:
		Person1()
		{
			cout << "默认" << endl;
		}
		Person1(int age, int height)
		{
			cout << "有参" << endl;
			m_Age = age;
			m_Height = new int(height);
		}
		Person1(const Person1 &p) // 自己实现拷贝构造函数，解决浅拷贝带来的问题
		{
			cout << "拷贝" << endl;
			m_Age = p.m_Age;
			//m_Height = p.m_Height; 浅拷贝，编译器默认操作
			//深拷贝操作
			m_Height = new int(*p.m_Height);
		}
		~Person1()
		{
			// 析构代码，将堆区开辟的内存做释放操作
			if (m_Height != NULL)
			{
				delete m_Height;
				m_Height = NULL;
			}
			cout << "析构" << endl;
		}

		int m_Age;
		int *m_Height;
};


void test01()
{
	Person p1(18,160);
	cout << "p1:" << p1.m_Age << *p1.m_Height<< endl;
	Person p2(p1); // 浅拷贝带来的问题是堆区的内存可能会被重复释放
	// 解决方案是使用深拷贝进行解决
	cout << "p2:" << p2.m_Age << *p2.m_Height << endl;

};
void test02()
{
	Person1 p1(18,160);
	cout << "p1:" << p1.m_Age << *p1.m_Height<< endl;
	Person1 p2(p1); // 浅拷贝带来的问题是堆区的内存可能会被重复释放
	// 解决方案是使用深拷贝进行解决
	cout << "p2:" << p2.m_Age << *p2.m_Height << endl;

};


int main(){
	//test01(); // 会触发重复释放堆区引起的运行错误	
	test02();
	system("ls");

	return 0;

}
