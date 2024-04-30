#include<iostream>
#include<fstream>
using namespace std;
// 包含头文件 include fstream
// 创建流对象   ofstream file
// 打开文件 ofs.open("文件路径","打开方式")
// 写数据 ofs << "数据"
// 关闭文件 ofs.close()

// ios::in 为读文件打开文件
// ios::out 为写文件打开文件
// ios::ate 初始位置：文件尾
// ios::app 追加方式写文件
// ios::trunc 若文件存在先删除再创建
// ios::binary 二进制方式
// 
// 注意：文件打开方式可以配合使用，利用|操作符
// 

void test01()
{
	ofstream ofs;
	ofs.open("./write.txt",ios::out);
	ofs << "name: xue" << endl;
	ofs << "sex: man" << endl;
	ofs.close();
}

int main(){
	test01();
	system("ls");

	return 0;

}
