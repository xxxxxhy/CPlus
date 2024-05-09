#include<iostream>
using namespace std;
// 类模板中的成员函数的类外实现
template<class T1,class T2>
class Person
{
	public:
	Person(T1 name, T2 age);
//	{
//		this->m_Name = name;
//		this->m_Age = age;
//	}
	void showPerson();
//	{
//		cout << "name:" << this->m_Name << " age:" << this->m_Age <<endl;
//	}
	T1 m_Name;
	T2 m_Age;
};

// 构造函数的类外实现
template<class T1,class T2>
Person<T1,T2>::Person(T1 name,T2 age)
{
	this->m_Name = name;
	this->m_Age = age;
}

// 成员函数的类外实现
template<class T1,class T2>
void Person<T1,T2>::showPerson()
{
	cout << "name is: " << this->m_Name << " age is:" << this->m_Age << endl;
}

void test01()
{
	Person<string,int> P("xhy",28);
	P.showPerson();
}

int main(){
	test01();	
	system("ls");

	return 0;

}
