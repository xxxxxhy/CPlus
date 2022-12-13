#include<iostream>
using namespace std;

int main(){
	// while 满足循环条件，执行循环语句
	// 语法 while(循环条件){循环语句}
	
	int num = 0;

	while (num<10)
		cout << num++ << endl;
	
	// 案例演示
	
	int n = 20;
	int m = 0;

	cout << "请输入一个数字" << endl;
	cin >> m;
	cout << "您输入的数字为：" <<  m << endl;
	std::cin.clear();
	while (m != n)
	{
		cout << "很抱歉您猜错了，请您继续输入数字" << endl;
		//cout << "请输入一个数字"
		cin >> m;
		cout << "您输入的数字为：" << m	<< endl;
	}
	cout << "恭喜您，猜对了！"  << endl;

	system("ls");
	// 尽量避免出现死循环
	return 0;

}
