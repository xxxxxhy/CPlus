#include<iostream>
using namespace std;

int main(){
	
	// 赋值运算符 用于将表达式的值赋给变量
	// = 赋值 += 加等于 -= *= /= %=
	
	int a = 10;
	a = 100;
	cout << "a=" << a << endl;

	a = 10;
	a += 2;
	cout << "a=" << a << endl;
	
	a = 10;
	a -= 2;	
	cout << "a=" << a << endl;
	
	a = 10;
	a *= 2;
	cout << "a=" << a << endl;
	
	a = 10;
	a /= 2;
	cout << "a=" << a << endl;
	
	a = 10;
	a %= 2;
	cout << "a=" << a << endl;
		

	system("ls");

	return 0;

}
