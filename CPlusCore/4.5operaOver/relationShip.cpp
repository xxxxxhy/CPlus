#include<iostream>
using namespace std;
// 重载关系运算符
// 作用：重载关系运算符，可以让两个自定义类型对象进行对比操作

class Person
{
	public:
		Person(string name, int age)
		{
			m_Name = name;
			m_Age = age;
		}
		bool operator==(Person &p)
		{
			if (this->m_Name == p.m_Name && this->m_Age == p.m_Age)
			{
				return true;
			}
			return false;
		}
		string m_Name;
		int m_Age;
};

void test01()
{
	Person p1("xhy",28);

	Person p2("xhy",28);

	if (p1 == p2)
	{
		cout << "p1 == p2" << endl;
	}
}

int main(){
	test01();	
	system("ls");

	return 0;

}
