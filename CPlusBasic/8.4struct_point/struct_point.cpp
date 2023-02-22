#include<iostream>
#include<string>
using namespace std;
// 结构体指针
// 作用：通过指针访问结构体中的成员
// 利用操作符 -> 可以通过结构体指针访问结构体属性

struct student
{
	string name;
	int age;
	int score;
};
int main(){
	// 1. 创建结构体变量
	struct student s1 = {"xue", 18, 100};
	// 2. 通过指针指向结构体变量
	// int * p = &s1;  错误
	struct student * p = &s1;
	// 3. 通过指针访问结构体变量中的数据
	// 通过结构体的指针访问结构体属性，需要用 ->
	cout << "name: " << p->name << "age:" << p->age << "score:" << p->score << endl;


	system("ls");

	return 0;

}
