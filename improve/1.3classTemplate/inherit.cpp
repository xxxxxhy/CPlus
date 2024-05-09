#include<iostream>
using namespace std;

// 当类模板碰到继承时，需注意以下几点：
// 1. 当子类继承的父类是一个类模板时，子类在声明时，要指定父类中T的类型
// 2. 若不指定，编译器无法给子类分配内存
// 3. 如果想灵活指定出父类中T的类型，子类也需要变为类模板

template <class T>
class Base
{
	T m;
};

//class Son :public Base // 错误 必须知道父类中的T的数据类型，才可以继承给子类
class Son :public Base<int>
{
	
};

void test01()
{
	Son s1;
}

// 若想灵活指定父类中T类型，子类也需要变类模板
template <class T1,class T2>
class Son2 :public Base<T2>
{
	public:
	Son2()
	{
		cout << "T1 's type is:" << typeid(T1).name() << endl;
		cout << "T2 's type is:" << typeid(T2).name() << endl;
	}
	T1 obj;
};

void test02()
{
	Son2<int,char> s2;
	
}

int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
