#include<iostream>
using namespace std;
#include<string>
// 结构体嵌套结构体
// 作用：结构体中的成员可以是另一个结构体
// 例如：每个老师辅导一个学员，一个老师的结构体中，记录一个学生的结构体

struct student
{
	string name;
	int age;
	int score;
};

struct teacher
{
	int id;
	string name;
	int age;
	struct student stu;
};
int main(){
	
	teacher t1;
	t1.id =  10000;
	t1.name = "老王";
	t1.age = 50;
	t1.stu.name = "wang";
	t1.stu.age = 20;
	t1.stu.score = 60;
	cout << "t_name: " << t1.name << "t_id" << t1.id << "t_age: " << t1.age << "t_s_name: " << t1.stu.name << "t_s_age: " << t1.stu.age << "t_s_score: " << t1.stu.score << endl;  
	
	system("ls");

	return 0;

}
