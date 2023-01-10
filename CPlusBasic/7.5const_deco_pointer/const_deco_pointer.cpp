#include<iostream>
using namespace std;
// const修饰指针有三种情况：
// 1. const修饰指针 --常量指针
// 2. const修饰常量 -- 指针常量
// 3. const既修饰指针，又修饰常量
int main(){
	int a = 10;
	int b = 20;

	// 常量指针 特点：指针的指向可以修改，但指针指向的值不可修改
	const int * p = &a;
	//*p = 20 // 报错，指针指向的值不可修改
	p = &b; // 符合规则，指向可修改
	
	// 指针常量 特点：指针的指向不可修改，指针指向的值可以修改
	int * const p1 = &a;
	*p1 = 30; // 正确，指针指向的值可修改
	// p = &b; // 报错，指针的指向不可修改
	
	// const 修饰指针和常量 特点：指针的指向和指向的值都不可以改
	const int * const p2 = &a;
	
	// *p2 = b; // 报错
	// p2 = &b; // 报错

	system("ls");

	return 0;

}
