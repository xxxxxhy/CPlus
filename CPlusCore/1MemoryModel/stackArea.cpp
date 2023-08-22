#include<iostream>
using namespace std;

//栈区的数据由编译器管理开辟和释放，因此不要返回局部变量的地址

int * func(int b) //形参也会放在栈区
{
	int a = 10; //局部变量，存放在栈区，栈区的数据在函数执行完后自动释放
	return &a;
}

int main(){
	//接受函数返回值
	int * p = func();
	cout << *p << endl;
	cout << *p << endl;
	system("ls");

	return 0;

}
