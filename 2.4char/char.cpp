#include<iostream>
using namespace std;
// 字符型变量用于显示单个字符
// 语法：char ch = 'a';
// 定义时注意使用单引号，且只能有一个字符
int main(){
	//字符型变量占用一个字节
	//字符型变量并不是把字符本身放入内存中存储，而是将对应的ASCII码放入存储单元
		
	char ch1 ='a';
	cout << ch1 << endl;

	cout << "char占用内存大小为：" << sizeof(ch1) << endl;

	//常见错误
	
	// char ch2 = "b"; 双引号错误
	// char ch2 = 'asdsa'; 创建字符变量时，只能有一个字符
	
	//ASCII
	
	cout << (int)ch1 << endl; 

	system("ls");

	return 0;

}
