#include<iostream>
using namespace std;

//new的基本语法
int * func()
{
	int * p = new int(10);
	return p;
}

void test01()
{
	int * p = func();
	cout << *p << endl;
	delete p;
	//cout << *p << endl; //内存已经被释放，再次访问就是非法操作，会报错
}

void test02()
{
	// 创建一个10整型的数组，在堆区
	int * arr = new int[10];

	for (int i = 0; i <10; i++)
	{
		arr[i] = i+100;
	}
	for (int i = 0; i< 10; i++)
	{
		cout << arr[i] << endl;
	}

	//释放堆区数组
	delete[] arr; // 释放数组时要加[]才可以
}

int main(){
	
	test01();

	test02();

	//cout << *p << endl;

	system("ls");

	return 0;

}
