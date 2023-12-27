#include<iostream>
using namespace std;

//交换函数

//1、值传递
void mySwap01(int a,int b)
{
	int temp = a;
	a = b;
	b = temp;

	cout << "local a = " << a << endl;
	cout << "local b = " << b << endl;

}

//2 、地址传递

void mySwap02(int *a,int*b)
{
	int temp = *a;
	*a = *b;
	*b = temp;

}
//3、引用传递
int mySwap03(int &a, int &b)
{
	int temp = a;
	a = b;
	b = temp;
}


int main(){
	
	int a = 10;
	int b = 20;
	mySwap01(a,b);
	cout << "a =" << a << endl;
	cout << "b =" << b << endl;
	
	mySwap02(&a,&b);
	cout << "a =" << a << endl;
	cout << "b =" << b << endl;
	
	mySwap03(a,b);
	cout << "a=" << a << endl;
	cout << "b =" << b << endl;

	system("ls");

	return 0;

}
