#include<iostream>

using namespace std;

int main(){
	// Trinocular operation
	// 三目运算符
	// 作用： 通过三目运算实现简单的判断
	// 语法：表达式1?表达式2:表达式3
	// 若表达式1为真则执行表达式2的语句，否则执行表达式3
	
	int a = 10;
	int b = 20;
	int c = 0;

	c = (a > b ? a : b);

	cout << "c = " << c << endl;

	// 在C++中三目运算符返回的是变量，可以继续赋值；
	(a > b ? a : b) = 100;
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;

	system("ls");

	return 0;

}

