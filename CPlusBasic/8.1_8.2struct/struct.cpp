#include<iostream>
#include<string>
using namespace std;

// 结构体属于用户自定义的数据类型，允许用户存储不同的数据类型

struct Student // 在c++中创建struct变量时，struct关键字可省略
{ // 成员列表
	string name;
	int age;
	int score;
};

int main(){
	// 创建结构体语法： struct 结构体名 {结构体成员列表}
	// 通过结构体创建变量的方式有三种：
	// 1. struct 结构体名 变量名
	struct Student s1;
	// 通过.访问结构体变量中的属性
	s1.name = "张三";
	s1.age = 18;
	s1.score = 100;
	cout << "姓名： " << s1.name << "年龄： " << s1.age << "分数" << s1.score << endl;

	// 2. struct 结构体名 变量名 = {成员1值, 成员2值 ...}
	struct Student s2 = {"Jack", 19, 80};
	cout << "姓名： " << s2.name << "年龄： " << s2.age << "分数" << s2.score << endl;

	
	// 3. 定义结构体时顺便创建变量
	struct Student2
	{
		string nn;
		int hh;
		int gg;
	}s3;//顺便创建的结构体变量
	s3.nn = "Hen";
	s3.hh = 46;
	s3.gg = 88;
	cout << "姓名： " << s3.nn << "年龄： " << s3.hh << "分数" << s3.gg << endl;
	
	
	
	
	system("ls");

	return 0;

}
