#include<iostream>
using namespace std;
#include<string>
// 结构体做函数参数
// 作用： 将结构体作为参数向函数中传递
// 传递方式有两种：值传递，地址传递
struct student
{
	string name;
	int age;
	int score;
};

void printStudent(struct student s)
{
	s.age = 100;
	cout << "function 1:" << s.name << s.age << s.score << endl;
}
void printStudent2(struct student * p)
{
	p->age = 200;
	cout << "function 2:" << p->name << p->age << p->score << endl;
}
int main(){
	student s;
	s.name = "zhang";
	s.age = 20;
	s.score = 50;
	
	printStudent(s);
	cout << "main:" << s.name << s.age << s.score << endl;
	printStudent2(&s);
	cout << "main:" << s.name << s.age << s.score << endl;

	system("ls");

	return 0;

}
