#include<iostream>
using namespace std;
// const修饰成员函数
//
// 常函数：
// 1. 成员函数后加const后称此函数为常函数
// 2. 常函数内不可以修改成员属性
// 3. 成员属性声明时加关键字mutable后，在常函数中也可以修改
//
// 常对象：
// 1. 声明对象前加const称该对象为常对象
// 2. 常对象只能调用常函数
//

class Person
{
	public:
		Person(){
			m_A = 0;
			m_B = 0;
		}

		// this指针的本质 是一个指针常量，即指针指向不可修改
		// Person * const this; 每个类创建时都相当于指定了一个固定指针this
		// const Person * const this;
		//
		// 在成员函数后加const，修饰的是this指向，让指针指向的值不可被修改
		void showPerson() const
		{
			this->m_B = 100;	
		}
		int m_A;
		mutable int m_B; // 特殊变量，即使在常函数中，也可以修改这个值，加关键字mutable
		void func()
		{
		
		}
};



void test01()
{
	Person p;
	p.showPerson();
};

void test02()
{
	const Person p; //对象前加const，变为常对象
	//p.m_A = 100; 不允许的操作
	p.m_B = 100;

	p.showPerson();
	//p.func(); 不允许的操作，常对象只能调用常函数
};

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
