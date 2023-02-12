#include<iostream>
using namespace std;

// 作用：将自定义的结构体放入到数组中方便维护
// 语法：struct 结构体名 数组名{元素个数} = {{},{},...{}}

// 结构体数组
// 1. 定义结构体
struct student
{
	int name;
	int age;
	int score;
};
int main(){
	
	// 2. 创建结构体数组
	student stuArray[3] = 
	{
		{1, 18, 100},
		{2, 29, 99},
		{3, 39, 66}
	};
	// 3. 给结构体数组中的元素赋值
	stuArray[2].name = 4;
	// 4. 遍历结构体数组
	for (int i = 0; i<3; i++)
	{
		cout << "name: " << stuArray[i].name << "age: " << stuArray[i].age << "score: " << stuArray[i].score << endl;
	}
	system("ls");

	return 0;

}
