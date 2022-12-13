#include<iostream>
using namespace std;

int main(){
	
	// goto 可以无条件跳转语句
	// 语法 goto 标记;
	// 解释：若标记名称存在，执行到goto语句时，会跳转到标记的位置
	cout << "1、 xxxxx" << endl;
	cout << "2、 xxxxx" << endl;
	goto FLAG;
	cout << "3、 xxxxx" << endl;
	cout << "4、 xxxxx" << endl;
	FLAG:
	cout << "5、 xxxxx" << endl;

	system("ls");

	return 0;

}
