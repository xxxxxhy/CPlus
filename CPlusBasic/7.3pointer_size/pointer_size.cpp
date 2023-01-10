#include<iostream>
using namespace std;
// 问：指针也是数据类型，那么这种数据类型占用多少内存空间呢？

int main(){
	// 指针所占内存空间
	int a = 10;
	//int * p;
	//p = &a;
	int * p = &a;
	cout << "sizeof(int *) = " << sizeof(int *) <<  endl;
	cout << "sizeof(float *) = " << sizeof(float *) <<  endl;
	cout << "sizeof(double *) = " << sizeof(double *) <<  endl;
	cout << "sizeof(char *) = " << sizeof(char *) <<  endl;
	// 可以发现上边所有输出的占用空间大小均相同，原因是因为，指针储存的是地址，占用内存大小只跟操作系统的位数有关，64位操作系统占用8个字节，32位操作系统占用4个字节






	system("ls");

	return 0;

}
