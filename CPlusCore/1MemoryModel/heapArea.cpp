#include<iostream>
using namespace std;

// 在堆区开辟数据

int * func()
{	
	//利用new关键字 可以将数据开辟到堆区
	//int a = 10;
	//指针本质也是局部变量，放在栈上，指针保存的数据放在堆区
	int * p = new int(10);
	return p;
}

int main(){
	int * p = func();

	cout << *p << endl;


	system("ls");

	return 0;

}
