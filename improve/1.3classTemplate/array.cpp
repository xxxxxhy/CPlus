#include<iostream>
#include "MyArray.hpp"
using namespace std;
// 实现一个通用数组类，要求如下：
// 1. 可以对内置数据类型以及自定义数据类型的数据进行存储
// 2. 将数组中的数据存储到堆区
// 3. 构造函数中可以传入数组的容量
// 4. 提供对应的拷贝构造函数和operator=防止浅拷贝问题
// 5. 提供尾插法和尾删法对数组中的数据进行增加和删除
// 6. 可以通过下标的方式访问数组中的元素
// 7. 可以获取数组中当前元素个数和数组的容量
//
//
//

void printIntArray(MyArray <int>& arr)
{
	for (int i=0;i<arr.getSize();i++)
	{
		cout << arr[i] << endl;
	}
}

void test01()
{
	MyArray <int> arr1(5);
	for (int i=0;i<5;i++)
	{
		// 利用尾插法插入数据
		arr1.Push_Back(i);
	}
	cout << "arr1 out is:" << endl;
	printIntArray(arr1);
	cout << "capacity is :" << arr1.getCapacity() << endl;
	cout << "size is :" << arr1.getSize() << endl;
	MyArray <int>arr2(arr1);
	printIntArray(arr2);
	arr2.Pop_Back();
	cout << "delete :" << endl;
	cout << "capa is " << arr2.getCapacity() << endl;
	cout << "size is :" << arr2.getSize() << endl;
	MyArray <int>arr3(100);

	arr3=arr1;
}

class Person
{
	public:
		Person()
		{

		}
		Person(string name, int age)
		{
			this->m_Name = name;
			this->m_Age = age;
		}
		string m_Name;
		int m_Age;
};

void printPersonArray(MyArray<Person> & arr)
{
	for (int i=0;i<arr.getSize();i++)
	{
		cout << "name is :" << arr[i].m_Name << " age is:" << arr[i].m_Age << endl;
	}
}

void test02()
{
	MyArray<Person> arr(10);
	Person p1("wk",999);
	Person p2("hx",20);
	Person p3("dj",20);
	Person p4("zy",25);
	Person p5("aql",44);

	// 插入数据到数组中
	arr.Push_Back(p1);
	arr.Push_Back(p2);
	arr.Push_Back(p3);
	arr.Push_Back(p4);
	arr.Push_Back(p5);

	printPersonArray(arr);
	
	cout << "capacity is " << arr.getCapacity() << endl;

	cout << "size is " << arr.getSize() <<endl;

}

int main(){
	test01();	
	test02();
	system("ls");

	return 0;

}
