#include<iostream>
using namespace std;

int main(){
	
	// 在循环语句中，跳过本次循环中尚未执行的语句，继续执行下一次循环
	
	for (int i = 0; i <= 100;i++ )
	{
		if (i % 2 == 0)
		{
			continue;
		}
		cout << i << endl;
	}

	// 需注意continue和break的区别，continue并没有结束循环只是跳过，而break是直接将循环结束
	system("ls");

	return 0;

}
