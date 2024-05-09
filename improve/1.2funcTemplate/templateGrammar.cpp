#include<iostream>
using namespace std;

// C++另一种编程思想称为泛型编程，主要利用的技术就是模板
// C++提供两种模板机制：函数模板和类模板
//
// 函数模板作用：
// 建立一个通用函数，其函数返回值类型和形参类型可以不具体制定，用一个虚拟的类型代表
// 语法：
// template<typename T>
// 函数声明或定义
// 解释：
// template ------ 声明创建模板
// typename ------ 表明其后符号是一种数据类型，可以用class代替
// T 通用的数据类型，名称可以替换，通常为大写字母

void swapInt(int &a, int &b)
{
	int temp = a;
	a = b;
	b = temp;
}

void swapDouble(double &a, double &b)
{
	double temp = a;
	a = b;
	b = temp;
}

void test01()
{
	int a = 10;
	int b = 20;
	swapInt(a,b);
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;

	double c = 1.1;
	double d = 2.2;
	swapDouble(c,d);
	cout << "c is " << c << endl;
	cout << "d is " << d << endl;   
}

template<typename T> // 声明一个模板 告诉编译器后面代码中紧跟着的T不要报错，T是一个通用数据类型
void mySwap(T &a, T &b)
{
	T temp = a;
	a = b;
	b = temp;
}

void test02()
{
	int a = 10;
	int b = 20;
	// 两种方式使用模板
	// 1. 自动类型推导
	mySwap(a,b);
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;

	// 2. 显示指定类型
	mySwap<int>(a,b);
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;


}

int main(){
	test01();
	test02();	
	system("ls");

	return 0;

}
