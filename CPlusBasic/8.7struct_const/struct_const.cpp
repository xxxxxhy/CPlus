#include<iostream>
using namespace std;

// 结构体中const使用场景
// 作用：用const来防止误操作
struct student
{
	int name;
	int age;
	int score;
};
// 将函数中的形参改为指针，可以减少内存空间，而且不会复制新的副本出来
void printStudent(const student *s) // 加上const后函数中只要有修改的操作就会报错，可以防止我们误操作
{
	// s->age=15000;
	cout << s->name << s->age << s->score << endl;
}

int main(){
	
	student s = {3, 54, 100};

	printStudent(&s);
	
	cout << s.age << endl;
	// 通过函数打印结构体变量信息
	system("ls");

	return 0;

}
