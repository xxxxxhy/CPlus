#include<iostream>
using namespace std;

// 掌握类模板配合友元函数的类内和类外实现 
//
// 全局函数类内实现 - 直接在类内声明友元即可
// 全局函数类外实现 - 需要提前让编译器知道全局函数的存在
// 建议全局函数做类内实现，用法简单，而且编译器可直接识别
// 需要让编译器知道Person类存在
template<class T1,class T2>
class Person;

template<class T1,class T2>
void printPerson2(Person<T1,T2> p)
{
	cout << "class out name is :" << p.m_Name << " age is :" << p.m_Age << endl;
}


template<class T1,class T2>
class Person
{
	// 全局函数类内实现
	friend void printPerson(Person<T1,T2> p)
	{
		cout << "name is:" << p.m_Name << " age is:" << p.m_Age << endl;
	}
	// 全局函数类外实现
	// 加空模板参数列表
	// 如果全局函数是类外实现，需要让编译器提前知道这个函数的存在
	friend void printPerson2<>(Person<T1,T2> p);
	public:
	Person(T1 name,T2 age)
	{
		this->m_Name = name;
		this->m_Age = age;
	}
	private:
	T1 m_Name;
	T2 m_Age;
};


void test01()
{
	Person<string,int> p("xhy",20);
	printPerson(p);
}

void test02()
{
	Person<string,int> p("yyj",30);
	printPerson2(p);
}

int main(){
	test01();	
	test02();
	system("ls");

	return 0;

}
