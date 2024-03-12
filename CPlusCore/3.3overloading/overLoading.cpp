#include<iostream>
using namespace std;
// 作用：函数名可以相同，提高复用性
// 函数重载满足条件：
// 1. 同一个作用域下
// 2. 函数名称相同
// 3. 函数参数类型不同或者个数不同或者顺序不同
// 注意：函数的返回值不可以作为函数重载的条件
void func(){
	cout << "func 的调用" << endl;
}

void func(int a){
	cout << "func 的调用!" << endl;
}

int main(){
	func();
	system("ls");

	return 0;

}
