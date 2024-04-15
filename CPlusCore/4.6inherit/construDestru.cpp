#include<iostream>
using namespace std;
// 子类继承父类后，当创建子类对象，也会调用父类的构造函数
// 问题：父类和子类的构造和析构顺序
class Base
{
	public:
		Base()
		{
			cout << "Base's Constru func" << endl;
		}
		~Base()
		{
			cout << "Base's Destru func" << endl;
		}
};

class Son :public Base{
	public:
		Son()
		{
			cout << "son's constru func" << endl;
		}
		~Son()
		{
			cout << "son's destru func" << endl;
		}
};

void test01()
{
	// 继承中构造和析构顺序如下：
	// 先构造父类，再构造子类，析构的顺序相反
	Son s1;
}

int main(){
	test01();
	system("ls");

	return 0;

}
