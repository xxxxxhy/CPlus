#include<iostream>
using namespace std;
// 函数重载注意事项
// 1. 引用作为重载条件
void func(int &a){
	cout << "func1调用" << endl;
}
void func(const int &a){
	cout << "func2调用" << endl;
}
// 2. 函数重载碰到函数默认参数


void func2(int a, int b=10){
	cout << "func22 调用" << endl;
}

void func2(int a){
	cout << "func33调用" << endl;
}

// 当函数重载碰到默认参数，出现二义性，报错，尽量避免这种情况
int main(){
	int a =10;
	func(a);
	func(10);
	
	
	system("ls");

	return 0;

}
