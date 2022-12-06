#include<iostream>
// sizeof关键字可以统计数据类型所占大小
using namespace std;

int main(){
	
	// 整型： short(2) int(4) long(8) long long(8)
	// 可用sizeof求出数据类型占用内存大小
	// 语法: sizeof(数据类型/变量)
	
	short numl = 10;
	cout << "short占用空间为：" << sizeof(numl) << endl;
	
	int num2 = 10;
	cout << "int占用空间为：" << sizeof(num2) << endl;


	long num3 = 10;
	cout << "long占用空间为：" << sizeof(num3) << endl;
	
	
	long long num4 = 10;
	cout << "long long占用空间为：" << sizeof(num4) << endl;


	system("ls");

	return 0;

}
