#include<iostream>
using namespace std;
#include<string> // 用C++风格字符串时需包括此头文件

int main(){
	
	// 字符串型 用于表示一串字符
	// C风格的字符串
	char str1[] = "hello world";
	cout << str1 << endl;

	// C++风格字符串
	string str2 = "hello world";
	cout << str2 << endl;

	system("ls");

	return 0;

}
