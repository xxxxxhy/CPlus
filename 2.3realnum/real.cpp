#include<iostream>
using namespace std;
//用于表示小数
//1. 单精度 float 4字节 7位有效数字
//2. 双精度 double 8字节 15~16位有效数字
//默认情况下，输出一个小数，会显示出6位有效数字
int main(){
	
	float f1 = 3.1415926f;
	
	cout << "f1 = " << f1 << endl;

	double d1 = 3.1415926;
	cout << "d1 = " << d1 << endl;

	// 统计占用内存空间
	cout << "float 占用内存空间为：" << sizeof(f1) << endl;
	cout << "double 占用内存空间为：" << sizeof(d1) << endl;
	
	//科学计数法
	float f2 = 3e2; // 3*10^2;
	cout << "f2 = " << f2 << endl;

	float f3 = 3e-2; //3*10^-2
	cout << "f3 = " << f3 << endl;




	system("ls");

	return 0;

}
