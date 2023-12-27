#include<iostream>
using namespace std;

int& test01()
{
	int a = 10;
	return a;
}

int& test02()
{
	static int a = 10;
	return a;
}

int main(){

	// 引用做函数的返回值
	// 1. 不要返回局部变量的引用
	//int &ref = test01();
	int ref = 100;
	cout << " ref = " << ref << endl; // 第一次结果正确，是因为编译器做了保留
	cout << "ref = " << ref << endl; // 第二次结果错误，因为a的内存已经释放
	// 2. 函数的调用可以作为左值	
	
	int &ref2 = test02();
	cout << "ref2 = " << ref2 << endl;
	cout << "ref2 = " << ref2 << endl;
	
	test02() = 1000; // 如果函数的返回值引用，这个函数调用可以作为左值 
	cout << "ref2 = " << ref2 << endl;
	cout << "ref2 = " << ref2 << endl;

	system("ls");

	return 0;

}
