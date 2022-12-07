#include<iostream>
using namespace std;

int main(){
	
	// 算术运算符 用于处理四则运算
	// + 加（正号） - 减（负号） * 乘  / 除
	// % 取模 ++ 自加 --自减
	// 其中自加自减分为前置和后置
	
	int a1 = 10;
	int b1 = 3;
	
	cout << a1+b1 << endl;
	cout << a1-b1 << endl;
	cout << a1*b1 << endl;
	cout << a1/b1 << endl; // 两个整数相除，结果依然是整数，小数部分去除
	
	int a2 = 10;
	int b2 = 20;

	cout << a2/b2 << endl;

	int a3 = 10;
	int b3 = 0;

	// cout << a3/b3 << endl; // 会抛出异常
	
	double d1 = 0.5;
	double d2 = 0.22;
	cout << d1/d2 << endl; // 两小数相除，运算结果也是小数
			       
	// 取模运算
	int a4 = 10;
	int b4 = 3;

	cout << a4%b4 << endl;
	
	// 需注意的是，两个小数是不可以做取模运算的
	
	
	// 自加，自减运算
	
	// 前置自加
	int a = 10;
	++a;
	cout << a << endl;

	// 后置自加
	int b = 10;
	b++;
	cout << b << endl;
	
	// 前置和后置区别
	// 前置是先加后算，后置是先算后加
	int a9 = 10;
	int b9 = ++a9*10;
	cout << "a9:" << a9 << endl;
	cout << "b9:" << b9 << endl;

	int a8 = 10;
	int b8 = a8++ * 10;
	cout << "a8:" << a8 << endl;
	cout << "b8:" << b8 << endl;
	
	system("ls");

	return 0;

}
