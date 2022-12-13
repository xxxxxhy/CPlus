#include<iostream>
using namespace std;

int main(){
	// for
	// 语法 for(起始表达式;条件表达式;末尾循环体){循环语句;}
	
	for (int i = 0; i < 10; i++)
	{
		cout << i << endl;
	}

	// 也可用下面的方式表达
	int i = 0;
	for (;;)
	{
		if (i>=10)
		{
			break;
		}
		cout << i << endl;
		i++;
	}

	// 案例 敲桌子
	
	for (int num = 1; num <= 100; num++)
	{
		if ((num % 7 == 0) || (num % 10 == 7) || (num / 10 == 7))
		{
			cout << "敲桌子" << endl;
		}	
		else
		{
			cout << num << endl;
		}
	}

	// 嵌套循环
	for (int j = 0; j < 10; j++)
	{
		for (int i = 0; i < 10; i++)
		{
			cout << "* ";
		}	
		cout << endl;
	}
	
	// 案例 乘法口诀表
	
	for (int i = 1; i < 10; i++)
	{
		for (int j = 1;j <= i; j++)
		{
			cout << j << "x" << i << "=" << i*j << " ";
		}
		cout << endl;
	}

	system("ls");

	return 0;

}
