#include<iostream>
using namespace std;
#include<string>

int main(){
	
	// 二维数组定义方式
	// 1. 数据类型 数组名[行数][列数];
	// 2. 数据类型 数组名[行数][列数] = {{数据1, 数据2},{数据3,数据4}};
	// 3. 数据类型 数组名[行数][列数] = {数据1,数据2,数据3,数据4};
	// 4. 数据类型 数组名[][列数] = {数据1,数据2,数据3,数据4};
	
	int arr[2][3];
	arr[0][0] = 1;
	arr[0][1] = 2;
	arr[0][2] = 3;
	arr[1][0] = 4;
	arr[1][1] = 5;
	arr[1][2] = 6;

	cout << arr[0][0] << endl;
	cout << arr[0][1] << endl;
	cout << arr[0][2] << endl;
	cout << arr[1][0] << endl;
	cout << arr[1][1] << endl;
	cout << arr[1][2] << endl;

	for (int i =0 ; i < 2; i++)
	{
		for (int j=0; j<3; j++)
		{
			cout << arr[i][j] << endl;
		}
	}

	int arr2[2][3] = {{1,2,3},{4,5,6}};
	for (int i =0 ; i < 2; i++)
	{
		for (int j=0; j<3; j++)
		{
			cout << arr2[i][j] << " ";
		}
		cout << endl;
	}

	int arr3[2][3] = {1,2,3,4,5,6};

	int arr4[][3] = {1,2,3,4,5,6};

	
	// 二维数组的数组名
	// 查看二维数组所占内存空间
	// 获取二维数组首地址
	
	int arr5[2][3] = {{1,2,3},{4,5,6}};
	cout << "二维数组占用内存空间为：" << sizeof(arr5) << endl;
	cout << "二维数组第一行占用内存为：" << sizeof(arr5[0]) << endl;
	cout << "二维数组第一个元素占用内存为：" << sizeof(arr5[0][0]) << endl;

	cout << "二维数组行数为：" << sizeof(arr5) / sizeof(arr5[0]) << endl;
	cout << "二维数组列数为：" << sizeof(arr5[0]) / sizeof(arr5[0][0]) << endl;	
	
	cout << "二维数组的首地址为：" << (long int)arr5 << endl;
	cout << "二维数组的第一行的首地址为：" << (long int)arr5[0] << endl;
	cout << "二维数组的第二行的首地址为：" << (long int)arr5[1] << endl;
	cout << "二维数组的第一个元素的首地址为：" << (long int)&arr5[0][0] << endl;
	
	cout << "二维数组的第二个元素的首地址为：" << (long int)&arr5[0][1] << endl;


	// 应用案例
	// 考试成绩统计

	string names[3] = {"张三","李四","王五"};	
	int score[3][3] = {{100,100,100},{90,50,100},{60,70,80}};
	for (int i=0; i<3;i++)
	{
		int sum = 0;
		for (int j=0; j<3; j++)
		{
			cout << score[i][j] << " ";
			sum += score[i][j];
		}
		//cout << "第"<< i+1 << "个人的总成绩为：" << sum << endl;
		cout << names[i] << "的总成绩为：" << sum << endl;

	}

	system("ls");

	return 0;

}
