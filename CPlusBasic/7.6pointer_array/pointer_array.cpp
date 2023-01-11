#include<iostream>
using namespace std;
// 指针与数组
// 作用： 利用指针访问数组中的元素
int main(){
	
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	cout << "第一个元素为： " << arr[0] << endl;
	int * p = arr; // 数组名就是数组的首地址
	cout << "指针访问第一个元素： " << *p << endl;
	cout << "指针访问第二个元素： " << *++p << endl; // ++p使指针向后偏移int单位个字节
	
	// 利用指针遍历数组
	
	int * p2 = arr;

	for (int i = 0; i<10 ; i++)
	{
		cout << *p2 << endl;
		p2++;
	}

	system("ls");

	return 0;

}
