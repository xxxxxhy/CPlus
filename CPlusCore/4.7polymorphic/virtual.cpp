#include<iostream>
using namespace std;
// 在多态中，通常父类中虚函数额实现是毫无意义的，主要是调用子类重写的内容
// 因此可以将虚函数改为纯虚函数
// 纯虚函数语法： virtual 返回值类型 函数名 (参数列表)=0;
// 当类中有了纯虚函数，这个类也称为抽象类
// 抽象类特点：
// 1. 无法实例化对象
// 2. 子类必须重写抽象类中的纯虚函数，否则也属于抽象类

class Base
{
	public:
		virtual void func() = 0;
};

class Son :public Base{
	public:
		virtual void func(){

		}
};
void test01()
{
	
}

int main(){
	
	system("ls");

	return 0;

}
