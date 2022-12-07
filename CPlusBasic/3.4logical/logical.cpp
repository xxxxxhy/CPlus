#include<iostream>
using namespace std;

int main(){
	
	// 逻辑运算符 用于根据表达式的值返回逻辑值
	// ! 非     && 与    || 或
	int a = 10;
	cout << !a << endl;

	cout << !!a << endl;

	int a1 = 10;
	int b1 = 10;

	cout << (a1&&b1) << endl;
	
	a1 = 0;

	cout << (a1&&b1) << endl;
	
	b1 = 0;

	cout << (a1&&b1) << endl;

	int a2 = 10;
	int b2 = 10;

	cout << (a2||b2) << endl;
	
	a2 = 0;
	cout << (a2||b2) << endl;
	
	b2 = 0;
	cout << (a2||b2) << endl;

	system("ls");

	return 0;

}
