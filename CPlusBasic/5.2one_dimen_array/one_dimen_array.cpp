#include<iostream>
using namespace std;

int main(){
	
	// 一维数组定义方式
	// 1. 数据类型 数组名[数组长度];
	// 2. 数据类型 数组名[数组长度] = {值1，值2 ...};
	// 3. 数据类型 数组名[] = {值1，值2 ...};
	
	// 数组特点： 放在一块连续的内存空间中，数组中每个元素类型都相同
	// 可通过下标访问数组中的元素
	
	int arr[5];
	
	arr[0] = 10;
	arr[1] = 20;
	arr[2] = 30;
	arr[3] = 40;
	arr[4] = 50;

	cout << arr[0] << endl;

	cout << arr[1] << endl;

	cout << arr[2] << endl;

	cout << arr[3] << endl;

	cout << arr[4] << endl;

	int arr2[5] = {10,20,30,40,50};
	
	// 若在初始化数组时，没有全部填写完，会用0来自动填补剩余数据

	cout << arr[0] <<endl;
	cout << arr[1] <<endl;
	cout << arr[2] <<endl;
	cout << arr[3] <<endl;
	cout << arr[4] <<endl;
	
	// 定义数组时，必须有初始长度
	int arr3[] = {90,80,70,60,50,40,30,20,10};

	for (int i = 0; i < 9; i++)
	{
		cout << arr3[i] << endl;
	}	

	
	// 数组名的用途
	// 1. 可以统计整个数组在内存中的长度
	// 2. 可以获取数组在内存中的首地址
	
	int arr4[5] = {1,2,3,4,5};
	cout << sizeof(arr4) << endl;
	cout << "数组的首地址为" << arr4 << endl;
	cout << "数组的首地址为" << (long int)arr4 << endl;
	// (int) 转换后边的数据为十进制
	cout << "数组中第一个元素的地址为：" << (long int)&arr4[0] << endl;

	// 数组名是常量，不可以进行赋值操作
	// arr = 100; error

	// 案例 五只小猪称体重
	
	int pigs[5] = {300,350,200,400,250};

	int max = 0;

	for (int i = 0; i < 5; i++)
	{
		if (max < pigs[i])
		{
			max = pigs[i];
		}
	}
	cout << "最重的小猪体重为：" << max << endl;


	// 案例 数组元素逆置
	
	int arr6[7] = {1,2,4,5,6,7,9};
	int start = 0; // 起始元素的下标
	int end = sizeof(arr6)/sizeof(arr6[0]) - 1; //末尾元素下标
	cout << "逆置前" << endl;
	for (int i = 0; i < 7; i++)
	{
		cout << arr6[i] << endl;
	}
	
	while (start < end)
	{
		int temp = arr6[start];
		
		arr6[start] = arr6[end];
		
		start++;
		end--;
	
	}
	
	cout << "逆置后" << endl;
	
	for (int i = 0; i < 7; i++)
	{
		cout << arr6[i] << endl;
	}
		

	system("ls");

	return 0;

}
