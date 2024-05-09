#include<iostream>
using namespace std;
// 学习目标
// 类模板实例化出的对象，向函数传参的方式

// 一共有三种传入方式：
// 1. 指定传入的类型 --- 直接显示对象的数据类型
// 2. 参数模板化     --- 将对象中的参数变为模板进行传递
// 3. 整个类模板化   --- 将这个对象类型 模板化进行传递

template<class T1,class T2>
class Person
{
	public:
	Person(T1 name,T2 age)
	{
		this->m_Name = name;
		this->m_Age = age;
	}

	void showPerson()
	{
		cout << "name is :" << this->m_Name << " age is: " << this->m_Age <<endl;
	}
	T1 m_Name;
	T2 m_Age;
};
// 指定传入的类型
void printPerson1(Person<string,int>&p)
{
	p.showPerson();
}

void test01()
{
	Person<string,int> p1("swk",100);
	printPerson1(p1);
}
// 参数模板化
template<class T1,class T2>
void printPerson2(Person<T1,T2>&p)
{
	p.showPerson();
	cout << "T1's type is :" << typeid(T1).name() << endl;
	cout << "T2's type is :" << typeid(T2).name() << endl;
}

void test02()
{
	Person<string,int>p2("zbj",90);
	printPerson2(p2);
}

// 整个类模板化 
template<class T>
void printPerson3(T &p)
{
	cout << "T's type is :" << typeid(T).name() << endl;
	p.showPerson();
}
void test03()
{
	Person<string,int> p3("ts",30);
	printPerson3(p3);
}

int main(){
	test01();
	test02();
	test03();
	system("ls");

	return 0;

}
