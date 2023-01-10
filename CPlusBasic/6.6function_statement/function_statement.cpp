#include<iostream>
using namespace std;
// 函数的声明
// 作用：告诉编译器函数名称及如何调用函数。函数主体可单独定义
//
// 函数的声明可以多次，但是函数定义只能有一次

// 提前告诉编译器函数的存在，可以利用函数的声明
int max(int a, int b);
int max(int a, int b);
// 

int main(){
	
	int a = 10;
	int b = 20;
	cout << max(a,b) << endl;
	system("ls");

	return 0;

}

// 当函数在主函数后定义时，无此函数的提前声明，则会导致程序报错
int max(int a, int b)
{
	return a > b ? a : b;
}

