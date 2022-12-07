#include<iostream>
using namespace std;
#include<string>

int main(){

	// 数据的输入
	// 用于从键盘获取数据
	// 关键字：cin
	// 语法： cin >> 变量
	
	// 整型
	
	int a = 0;
	cout << "请给整型变量a赋值：" << endl;
	cin >> a;
	cout << "a的值为：" << a << endl;

	// 浮点型
	float b = 3.14f;
	cout << "请给浮点型变量b赋值：" << endl;
	cin >> b;
	cout << "b的值为：" << b << endl;

	
	// 字符型
	char c = 'a';
	cout << "请给字符变量c赋值：" << endl;
	cin >> c;
	cout << "c的值为：" << c << endl;

	
	// 字符串型
	string d = "bbb";
	cout << "请给字符串变量d赋值：" << endl;
	cin >> d;
	cout << "d的值为：" << d << endl;

	
	// 布尔型
	bool e = true;
	cout << "请给布尔变量e赋值：" << endl;
	cin >> e;
	cout << "e的值为：" << e << endl;


	system("ls");

	return 0;

}
