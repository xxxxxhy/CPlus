#include<iostream>
using namespace std;
#include<string>
// 封装是C++面向对象三大特性之一
// 封装的意义:
// 1. 将属性和行为作为一个整体，表现生活中的事物
// 2. 将属性和行为加以权限控制
// 封装意义一：
// 在设计类的时候，属性和行为写在一起，表现事物
// 语法：class 类名{ 访问权限:属性/行为};

// 示例：设计一个圆类，求圆周长

const double PI = 3.14;

// class代表设计一个类，类后面紧跟着的就是类名称
class Circle
{
	// 访问权限
	// 公共权限
public:

	// 属性
	int m_r; //半径

	
	// 行为
	// 获取圆的周长
	double calculateZC()
	{
		return 2*PI*m_r;
	}
};

class Student
{
	// 类中的属性和行为 我们统一成为成员
	// 属性 成员属性 成员变量
	// 行为 成员函数 成员方法
	public:
		string m_Name;
		int m_Id;

		void showStudent()
		{
			cout << "NAME:" << m_Name << "ID :" << m_Id << endl;
		}

		void setName(string name)
		{
			m_Name = name;
		}
};


int main(){
	// 通过圆类 创建具体的圆（对象）
	// 实例化（通过一个类创建一个对象的过程）
	Circle c1;
	// 给圆对象的属性进行赋值
	c1.m_r = 10;
	cout << "ZC is " << c1.calculateZC() << endl;
	
	Student s1;
	s1.m_Name = "zhang";
	s1.m_Id = 1;
	s1.setName("li");
	s1.showStudent();
		
	system("ls");

	return 0;

}
