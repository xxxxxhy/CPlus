#include<iostream>
using namespace std;

// 定义函数，实现两个数字进行交换
//
// 若函数不需要返回值，声明的时候可以写void
void swap(int num1,int num2)
{
	int temp = num1;
	cout << "交换前：" << endl;
	cout << "num1 = " << num1 << endl;
	cout << "num2 = " << num2 << endl;
	num1 = num2;
	num2 = temp;

	cout << "交换后：" << endl;
	cout << "num1 = " << num1 << endl;
	cout << "num2 = " << num2 << endl;
	//return; 不需要返回值时，可以不写return
}


int main(){
	
	// 值传递
	// 所谓值传递，就是函数调用时实参将数值传入给形参
	// 值传递时，若形参发生改变，并不会影响实参
		
	int a = 10;
	int b = 20;
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	swap(a,b);	
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	
	system("ls");

	return 0;

}
