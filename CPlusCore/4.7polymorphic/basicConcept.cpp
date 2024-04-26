#include<iostream>
using namespace std;

// 多态是C++面向对象三大特性之一
// 多态分为两类 
// 1. 静态多态：函数重载和运算符重载属于静态多态，复用函数名
// 2. 动态多态：派生类和虚函数实现运行时多态

// 静态多态和动态多态区别：
// 1. 静态多态的函数地址早绑定 - 编译阶段确定函数地址
// 2. 动态多态的函数地址晚绑定 - 运行阶段确定函数地址
//

class Animal
{
	public:
	virtual void speak()
	{

	}
};

int main(){
	
	system("ls");

	return 0;

}
