#include<iostream>
//#include "person.h"
using namespace std;
// 掌握类模板成员函数分文件编写产生的问题以及解决方式

// 问题： 
// 类模板中成员函数创建时机是在调用阶段，导致分文件编译时链接不到
// 解决：
// 1. 直接包含cpp源文件
//#include "person.cpp"
// 2. 将声明和实现写到同一个文件中，并更改后缀名为.hpp，.hpp是约定的名称，并不强制
#include "person.hpp"




void test01()
{
	Person<string,int> p("xhy",28);
	p.showPerson();
}

int main(){
	test01();	
	system("ls");

	return 0;

}
