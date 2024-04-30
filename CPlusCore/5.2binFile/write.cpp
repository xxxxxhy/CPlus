#include<iostream>
#include<fstream>
using namespace std;
// 以二进制方式对文件进行读写
// 打开方式要指定 ios::binary

// 二进制方式写文件主要利用流对象调用成员函数write
// 函数原型：ostream& write(const char * buffer, int len)
// 参数解释：字符指针buffer指向内存中一段存储空间，len是读写的字节数

class Person
{
	public:
		char m_Name[64];
		int m_Age;
};
void test01()
{
	ofstream ofs;
	ofs.open("./person.txt",ios::out | ios::binary);
	Person p = {"张三",18};
	ofs.write((const char *)&p,sizeof(Person));
	ofs.close();
}

int main(){
	test01();
	system("ls");

	return 0;
}
