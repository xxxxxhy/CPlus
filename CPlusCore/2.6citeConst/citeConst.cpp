#include<iostream>
using namespace std;

// 

int main(){

	// 常量引用
	// 使用场景：用来修饰形参，防止误操作
	int a = 10;
	//int & ref = 10; // 引用必须引一块合法的内存空间，这么写不合法
	// 加上const之后，编译器将代码修改为 int temp = 10; const int & ref = temp;
	const int & ref = 10;
	 
	system("ls");

	return 0;

}
