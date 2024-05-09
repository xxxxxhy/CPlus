#include<iostream>
using namespace std;
// 调用规则如下：
// 1. 如果函数模板和普通函数都可以实现，优先调用普通函数
// 2. 可以通过空模板参数列表来强制调用函数模板
// 3. 函数模板也可以发生重载
// 4. 如果函数模板可以产生更好的匹配，优先调用函数模板

void myPrint(int a, int b)
{
	cout << "common func" << endl;
}	

template<class T>
void myPrint(T a,T b)
{
	cout << "template func" << endl;
}
template<class T>
void myPrint(T a,T b,T c)
{
	cout << "template func1" << endl;
}


void test01()
{
	int a = 10;
	int b = 20;
	myPrint(a,b);

	myPrint<>(a,b);

	myPrint(a,b,100);

	char c1 = 'a';
	char c2 = 'b';
	// 推导匹配性大于隐式类型转换
	myPrint(c1,c2);
}

int main(){
	test01();
	system("ls");

	return 0;

}
