#include<iostream>
using namespace std;
// 类模板和函数模板的区别主要有两点：
// 1. 类模板没有自动类型推导的使用方式
// 2. 类模板在模板参数列表中可以有默认参数

template<class NameType,class AgeType = int>
class Person
{
	public:
	Person(NameType name,AgeType age)
	{
		this->m_Name = name;
		this->m_Age = age;
	}
	void showPerson()
	{
		cout << "name:" << this->m_Name << "age:" << this->m_Age << endl;
	}
	NameType m_Name;
	AgeType m_Age;
};

void test01()
{
	//Person p("xhy",1000); // 错误，无法自动类型推导
	Person<string,int> p("xhy",1000); 
	p.showPerson();
}
void test02()
{
	Person<string> p("xhy2",200); // 指定默认类型
	p.showPerson();
}

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
