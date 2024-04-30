#include<iostream>
using namespace std;

// 多态是C++面向对象三大特性之一
// 多态分为两类 
// 1. 静态多态：函数重载和运算符重载属于静态多态，复用函数名
// 2. 动态多态：派生类和虚函数实现运行时多态

// 静态多态和动态多态区别：
// 1. 静态多态的函数地址早绑定 - 编译阶段确定函数地址
// 2. 动态多态的函数地址晚绑定 - 运行阶段确定函数地址
//

class Animal
{
	// Speak函数就是虚函数
	public:
	// 虚函数
	virtual void speak()
	{
		cout << "animal is speaking" << endl;
	}
};

class Cat :public Animal
{
	public:
	// 重写 函数返回值类型 函数名 参数列表 完全相同
		void speak()
		{
			cout << "cat is speaking" << endl;
		}
};

class Dog :public Animal{
	public:
	void speak()
	{
		cout << "dog is speaking" << endl;
	}
};
// 地址早绑定 在编译阶段确定函数地址
// 若想执行猫讲话，函数地址就不能提前绑定，需在运行阶段进行绑定，即地址晚绑定
void doSpeak(Animal &animal) // Animal & animal = cat;
{
	animal.speak();
}
// 动态多态满足条件
// 1. 有继承关系
// 2. 子类重写父类中的虚函数
// 
// 动态多态的使用
// 父类的指针或者引用 执行子类对象
//

void test01()
{
	Cat cat;
	doSpeak(cat);

	Dog dog;
	doSpeak(dog);
}

void test02()
{
	// 定义虚函数前尺寸为1，定义虚函数后尺寸为4，表示一个指针
	// 指针叫 vfptr
	// 此指针指向一个叫 vftable的表
	// 此表存放的是虚函数的地址
	// 记录方式： &Animal::speak

	cout << "sizeof animal=" << sizeof(Animal) << endl; 
	
	// 当子类重写了父类的虚函数，
	// 子类中虚函数表会替换成子类的虚函数地址，即：&Cat::speak
	cout << "sizeof cat=" << sizeof(Cat) << endl;

	// 当父类的指针或者引用指向子类对象时，发生多态
}

int main(){
	test01();
	test02();	
	system("ls");

	return 0;

}
