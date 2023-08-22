#include<iostream>
using namespace std;

int main(){
	
	// 1. 引用必须初始化
	int a = 10;
	// int &b; //错误，必须要初始化
	int &b = a;


	// 2. 引用在初始化后，不可以改变
	int c = 20;

	//int &b = c; //错误，不可更改引用

	system("ls");

	return 0;

}
