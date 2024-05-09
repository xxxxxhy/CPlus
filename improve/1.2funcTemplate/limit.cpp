#include<iostream>
using namespace std;

// 局限性：
// 模板的通用性并不万能

// 如果传入的数据类型是自定义数据类型等可能会导致函数模板无法正常运行
// C++提供模板重载，可以为这些特定的类型提供具体化的模板

class Person
{
	public:
		Person(string name,int age)
		{
			this->m_Name=name;
			this->m_Age=age;
		}
		string m_Name;
		int m_Age;
};

template<class T>
bool myCompare(T &a,T &b)
{
	if (a==b)
	{
		return true;
	}
	else{
		return false;
	}
}

template<> bool myCompare(Person &a,Person &b)
{
	if (a.m_Name==b.m_Name && a.m_Age==b.m_Age)
	{
		return true;
	}
	else{
		return false;
	}
}


void test01()
{
	int a = 10;
	int b = 20;
	bool ret = myCompare(a,b);

	if (ret)
	{
		cout << "a==b" << endl;
	}
	else{
		cout << "a!=b" << endl;
	}
}

void test02()
{
	Person p1("Tom",10);
	Person p2("Tom",10);
	bool ret = myCompare(p1,p2);

	if (ret)
	{
		cout << "p1==p2" << endl;
	}
	else{
		cout << "p1!=p2" << endl;
	}
}

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
