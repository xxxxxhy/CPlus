#include<iostream>
using namespace std;
// C++中，函数的形参列表中的形参是可以有默认值的
// 语法： 返回值类型 函数名(参数=默认值){}

int func(int a, int b=20, int c=30){
	return a+b+c;
}

// 如果自行传入形参值，优先使用自行传入的数值，如果没有，则使用默认值
//注意事项：
// 1. 若某位置已有默认参数，则从当前位置往后，从左到右都必须有默认值
// 2. 若函数声明有了默认参数，则函数的实现就不能有默认参数,声明和实现只能有一个有默认参数
//
int func2(int = 10,int b = 10);

int func2(int a, int b)
{
	return a+b;
}
int main(){
	cout << func(10,30) << endl;

	system("ls");

	return 0;

}
