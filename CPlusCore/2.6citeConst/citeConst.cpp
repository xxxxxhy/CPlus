#include<iostream>
using namespace std;

//打印数据函数
void showValue(const int &val)
{
	//val = 1000; 加入const修饰后的形参不可更改
	cout << "val=" << val << endl;
}
 

int main(){

	// 常量引用
	// 使用场景：用来修饰形参，防止误操作
	//int a = 10;
	//int & ref = 10; // 引用必须引一块合法的内存空间，这么写不合法
	// 加上const之后，编译器将代码修改为 int temp = 10; const int & ref = temp;
	const int & ref = 10;
	//ref = 20; 不可做此操作，加入const变为只读，不可修改	 
	int a = 100;
	showValue(a);
	cout << "a = " << a << endl;

	system("ls");

	return 0;

}
