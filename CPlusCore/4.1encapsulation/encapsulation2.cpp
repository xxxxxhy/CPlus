#include<iostream>
using namespace std;
// 封装意义二：
// 类在设计时，可以把属性和行为放在不同权限下，加以控制
// 访问权限有三种：
// 1. public 公共权限      成员 类内可访问 类外可访问
// 2. protected 保护权限   成员 类内可访问 类外不可访问 继承中会体现和private区别 子类可访问父类中的保护内容
// 3. private 私有权限     成员 类内可访问 类外不可访问 子类不可访问父类中的私有内容

class Person
{
	string m_Name;
}

int main(){
	
	system("ls");

	return 0;

}
