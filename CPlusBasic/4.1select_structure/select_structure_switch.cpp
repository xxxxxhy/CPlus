#include<iostream>
using namespace std;

int main(){
	// 执行多条件分支语句
	
	cout << "给电影打分" << endl;
	
	int score = 0;
	
	cin >> score;
	cout << "您打的分数为： " << score << endl;
	
	switch (score)
	{
		case 10:
			cout << "您认为是经典电影" << endl;
			break; // 退出当前分支
		case 9:
			cout << "您认为是经典电影" << endl;
			break;
		case 8:
			cout << "您认为是电影非常好" << endl;
			break;
		case 7:
			cout << "您认为是电影非常好" << endl;
			break;
		case 6:
			cout << "您认为电影一般" << endl;
			break;

		case 5:
			cout << "您认为电影一般" << endl;
			break;

		default:
			cout << "您认为这是烂片" << endl;
			break;

	}
	// 注意 每个case后最好都要加break，不加break的话程序会顺次往下执行
	// default是在前边条件都不满足的情况下执行的语句
	//
	// if和switch区别？
	// switch 缺点：判断时候只能是整型或者是字符型，不可是区间
	// switch优点： 结构清晰，执行效率高
	
	system("ls");

	return 0;

}
