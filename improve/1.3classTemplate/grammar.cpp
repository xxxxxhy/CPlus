#include<iostream>
using namespace std;
// 类模板作用：
// 建立一个通用类，类中的成员 数据类型可以不具体制定，用一个虚拟类型代表
// template<typename T>
// 类
template<class NameType,class AgeType>
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
			cout << "name is:" << this->m_Name << "age is:" << this->m_Age << endl;
		}
	NameType m_Name;
	AgeType m_Age;
};

void test01()
{
	Person<string,int> p1("xhy",999);
	p1.showPerson();
}


int main(){
	test01();
	system("ls");

	return 0;

}
