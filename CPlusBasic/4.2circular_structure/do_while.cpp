#include<iostream>
using namespace std;

int main(){
	// do...while 满足循环条件，执行循环语句
	// 语法 do{循环语句} while(循环条件);
	// 与while的区别在于do...while会先执行循环语句，再判断条件
	
	int num = 0;

	do
	{
		cout << ++num << endl;
		//num++;
	}	
	while(num<10);

	// 案例 水仙花数
	// 描述 水仙花数指的是一个3位数，他的每个位上的数字的3次幂之和等于它本身
	int i = 100;
	int ge = 0;
	int shi = 0;
	int bai = 0;
	do
	{
		ge = i%10;
		shi = i/10%10;
		bai = i/100;
		if (ge*ge*ge+shi*shi*shi+bai*bai*bai == i)
		{
			cout << i << "是水仙花数" << endl;
		}
		i++;
	}
	while (i<1000);

	system("ls");

	return 0;

}
