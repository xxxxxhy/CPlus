#include<iostream>
#include <fstream>
using namespace std;

// 二进制方式读文件主要利用流对象调用成员函数read
// 函数原型： istream& read(char *buffer, int len);
// 参数解释：字符指针buffer指向内存中一段存储空间，len是读写的字节数
//

class Person
{
	public:
	char m_Name[64];
	int m_Age;
};

void test01()
{
	ifstream ifs;
	ifs.open("./person.txt",ios::in | ios::binary);
	if (!ifs.is_open())
	{
		cout << "failed" << endl;
		return;
	}
	Person p;
	ifs.read((char *)&p,sizeof(Person));
	cout << "name is "<< p.m_Name << "age is " << p.m_Age <<endl;
	ifs.close();
}

int main(){
	test01();	
	system("ls");

	return 0;

}
