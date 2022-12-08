#include<iostream>
using namespace std;

int main(){
	// if语句
	// 执行满足条件的语句
	// 单行格式if语句： if(条件){条件满足执行的语句}
	
	int score = 0;
	cout << "请输入一个分数：" << endl;
	cin >> score;
 
	cout << "您输入的分数为：" << score << endl;
	
	// 注意 if 条件后不能加分号 不然判断无效
 	if (score > 600)
	{
		cout << "恭喜您考上了一本大学" << endl;
	}	

	// 多行格式if语句: if(条件){条件满足执行的语句} else {条件不满足执行的语句}
	if (score > 600)
	{
		cout << "恭喜您考上了一本大学" << endl;	
	}
	else
	{
		cout << "未考上一本大学" << endl;
	}

	// 多条件的if语句 if (条件1) {条件1满足执行的语句} else if (条件2) {条件2满足执行的语句} ... else {都不满足执行的语句}
	if (score > 600)
	{
		cout << "恭喜您考上了一本大学" << endl;	
	}
	else if (score > 500)
	{
		cout << "恭喜您考上了二本大学" << endl;	
	}
	else if (score > 400)
	{
		cout << "恭喜您考上了三本大学" << endl;	
	}	
	else
	{
		cout << "未考上本科大学" << endl;
	}

	// 嵌套if语句 在if语句中，可以嵌套使用if语句，达到更精确的条件判断
	
	if (score > 600)
	{
		cout << "恭喜您考上了一本大学" << endl;
		if (score > 700)
		{
			cout << "您能考入北京大学" << endl;
		}
		else if (score > 650)
		{
			cout << "您能考入清华大学" << endl;
		}
		else
		{
			cout << "您能考入人大" << endl;
		}	
	}
	else if (score > 500)
	{
		cout << "恭喜您考上了二本大学" << endl;	
	}
	else if (score > 400)
	{
		cout << "恭喜您考上了三本大学" << endl;	
	}	
	else
	{
		cout << "未考上本科大学" << endl;
	}

	int num1 = 0;
	int num2 = 0;
	int num3 = 0;

	cout << "请输入小猪A的体重" << endl;
	cin >> num1;
	cout << "小猪A的体重为：" << num1 << endl;	
	cout << "请输入小猪B的体重" << endl;
	cin >> num2;
	cout << "小猪B的体重为：" << num2 << endl;	
	cout << "请输入小猪C的体重" << endl;
	cin >> num3;
	cout << "小猪C的体重为：" << num3 << endl;

	if (num1 > num2)
	{
		if (num1 > num3)
		{
			cout << "小猪A最重" << endl;
		}
		else
		{
			cout << "小猪C最重" << endl;
		}
	}	
	else
	{
		if (num2 > num3)
		{
			cout << "小猪B最重" << endl;
		}
		else
		{
			cout << "小猪C最重" << endl;
		}	
	}
	system("ls");

	return 0;

}
