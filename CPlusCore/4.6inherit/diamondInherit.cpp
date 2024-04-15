#include<iostream>
using namespace std;
// 菱形继承

// 两个派生类继承同一个基类 
// 又有某个类同时继承两个派生类
// 这种继承称为菱形继承，或者钻石继承
//
// 菱形继承问题

// 1. 羊驼继承了动物的数据，驼同样继承了动物的数据，当草泥马使用数据时，就会产生二义性
// 2. 草泥马继承自动物的数据继承了两份，其实我们清楚，这份数据秩序一份即可

class Animal
{
	public:
		
		int m_Age;
};

// 利用虚继承 解决菱形继承的问题
// 继承前加关键字 virtuall变为虚继承
// Animal 类称为虚基类
class Sheep: virtual public Animal
{
	public:
};

class Toe:virtual public Animal{
	public:
};
// vbptr 代表 虚基类指针 指向 vbtable
class SheepToe:public Sheep,public Toe
{
	public:

};

void test01()
{
	SheepToe st;
	// st.m_Age = 18; //
	st.Sheep::m_Age = 18;
	st.Toe::m_Age = 28;
	// 当出现菱形继承时，有两个父类拥有相同的数据，需要加作用区分
	cout << "Sheep Age is" << st.Sheep::m_Age <<endl;
	cout << "Toe Age is " << st.Toe::m_Age << endl;

	// 这份数据我们知道只要有一份即可，菱形继承导致数据有两份，资源浪费

}

int main(){
	test01();	
	system("ls");

	return 0;

}
