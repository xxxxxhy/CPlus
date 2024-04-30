#include<iostream>
using namespace std;
// 多态使用时，如果子类中有属性开辟到堆区，那么父类指针在释放时无法调用到子类的析构代码 
// 解决方式：将父类中的析构函数改为虚析构或者纯虚析构
// 虚析构和纯虚析构共性：
// 1. 可以解决父类指针释放子类对象
// 2. 都需要有具体的函数实现
// 虚析构和纯虚析构区别：
// 1. 如果是纯虚析构，该类属于抽象类，无法实例化对象
// 虚析构语法：
// virtual ~类名(){}
// 纯虚析构语法：
// virtual ~类名(){}
// 类名::~类名(){}
//

class Animal
{
	public:
		Animal()
		{
			cout << "Animal Constru use" << endl;
		}
		// 虚析构解决 父类指针释放子类对象时不干净的问题
		//virtual ~Animal()
		//{
		//	cout << "Animal Destru use" << endl;
		//}
		// 纯虚析构需要声明也需要实现
		// 有了纯虚析构后，这个类也属于抽象类，无法实例化对象
		virtual ~Animal() = 0;
		virtual void speak() = 0;

};

Animal::~Animal()
{
	cout << "pure virtual Detru use" << endl;
}

class Cat :public Animal
{
	public:
		Cat(string name)
		{
			cout << "Cat constru use" << endl;
			m_Name = new string(name);
		}
	virtual void speak()
	{
		cout << *m_Name <<  "cat is speaking" << endl;
	}
	~Cat()
	{
		if (m_Name != NULL)
		{
			cout << "Cat Destru use" << endl;
			delete m_Name;
			m_Name = NULL;
		}
	}
	string *m_Name;
};

void test01()
{
	Animal * animal = new Cat("Tom");
	animal->speak();

	// 父类指针在析构时，不会调用子类的析构函数，导致子类若有堆区属性，会出现内存泄漏现象
	delete animal;
}

int main(){
	test01();
	system("ls");

	return 0;

}
