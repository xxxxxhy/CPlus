#include<iostream>

using namespace std;
// 注意事项： 
// 1. 自动类型推导，必须推导出一致的数据类型T，才可以使用
// 2. 模板必须要确定出T的数据类型，才可以使用
//

template <typename T> // typename可以替换成class
void mySwap(T &a,T &b)
{
	T temp = a;
	a = b;
	b = temp;
}

void test01()
{
	int a = 10;
	int b = 20;
	// double b = 20.1 推导数据类型不一致
	mySwap(a,b);
}

template<class T>
void func()
{
	cout << "func using" << endl;
}

void test02()
{
	//func(); // 必须确定T的数据类型
	func<int>();
}
int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
