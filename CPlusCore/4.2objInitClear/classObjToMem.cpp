#include<iostream>
using namespace std;
// C++类中的成员可以是另一个类的对象，称该成员为对象成员
/*
class A
{};

class B
{
	A a;
};*/
// 上述代码表示B类中有对象A作为成员，A为对象成员
//
// 当创建B对象时，A与B的构造与析构顺序先后问题
// 
// 当其他类对象作为本类成员，构造时先构造类对象，再构造自身，析构的顺序与构造相反
class Phone
{
	public:
		Phone(string pName)
		{
			cout << "Phone" << endl;
			m_PName = pName;
		}
		~Phone()
		{
			cout << "~Phone" << endl;
		}
		string m_PName;

};
class Person
{
	public:
		Person (string name, string pName):m_Name(name),m_Phone(pName)
		{
			cout << "Person" << endl;	
		}
		~Person()
		{
			cout << "~Person" << endl;
		}
		string m_Name;
		Phone m_Phone;
};

void test01()
{
	Person p("zhang","apple");
	cout << p.m_Name << "take" << p.m_Phone.m_PName << endl;
};

int main(){
	test01();
	system("ls");

	return 0;

}
