#include<iostream>
using namespace std;

int main(){
	
	// 转义字符　用于表示一些不能显示出来的ASCII字符
	// 常用转义字符
	
	// 换行符 \n
	// 反斜杠 \\
	// 水平制表符 \t 作用是可以整齐地输出数据 
	
	cout << "hello world\n";	

	cout << "\\" << endl;

	cout << "aaa\thelloworld" << endl;
	cout << "aaaa\thelloworld" << endl;
	cout << "aaaaaa\thelloworld" << endl;
	system("ls");
	
	return 0;

}
