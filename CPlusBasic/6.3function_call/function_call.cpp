#include<iostream>
using namespace std;

// 函数定义
// 函数定义时，num1和num2并没有真实数据，只是形式上的参数，简称形参
int add(int num1, int num2)
{
	int sum = num1 + num2;
	return sum;
}

int main(){

	// 函数的调用 使用定义好的函数
	// 语法： 函数名(参数)
	
	int a = 10;
	int b = 20;
	// a、b称为实际参数，简称实参
	// 当调用函数时，实参的值会传递给形参
	int c = add(a,b);
	cout << "c =" << c << endl;

	system("ls");

	return 0;

}
