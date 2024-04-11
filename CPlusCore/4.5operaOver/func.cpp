#include<iostream>
using namespace std;
// 函数调用运算符()也可以重载
// 由于重载后使用的方式非常像函数的调用，因此称为仿函数
// 仿函数没有锁定写法，非常灵活

class MyPrint
{
	public:
		// 重载函数调用运算符
		void operator()(string test)
		{
			cout << test << endl;
		}
};

void test01()
{
	MyPrint myPrint;
	myPrint("hello world"); // 由于使用方式类似函数调用，因此称为仿函数
}

// 加法类
class MyAdd
{
	public:
		int operator()(int num1, int num2)
		{
			return num1+num2;
		}
};

void test02()
{
	MyAdd myadd;
	int re = myadd(100,100);
	cout << "re is " << re << endl;
	// 额外知识 匿名函数对象 用完即释放
	cout << MyAdd()(100,100) << endl;

}

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
