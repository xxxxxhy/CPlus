#include<iostream>
using namespace std;

int main(){
	
	// break 用于 跳出选择结构或者循环结构
	//
	// switch语句，终止case，跳出switch
	// 循环语句中，作用是跳出当前的循环
	// 嵌套循环中，跳出最近的内层循环语句
		
	// switch 案例请参看4.1节
	//
	// for 案例
	
	for (int i = 0; i < 10; i++)
	{
		if (i==5)
		{
			break;
		}
		cout << i << endl;
	}

	// 嵌套循环
	
	for (int i = 0; i < 10; i++)
	{
		for (int j = 0; j < 10; j++)
		{
			if (j == 5)
			{
				break;
			}
			cout << "*";
		}
		cout << endl;
	}

	system("ls");

	return 0;

}
