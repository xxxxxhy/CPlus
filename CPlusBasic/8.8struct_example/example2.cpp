#include<iostream>
#include<string>
using namespace std;


struct Hero
{
	string name;
	int age;
	string sex;
};

void bubbleSort(struct Hero heroArray[], int len)
{
	for (int i =0; i< len-1;i++)
	{
		for (int j = 0; j< len-i-1;j++)
		{
			if (heroArray[j].age > heroArray[j+1].age)
			{
				struct Hero temp = heroArray[j];
				heroArray[j] = heroArray[j+1];
				heroArray[j+1] = temp;
			}
		}
	}
}

void printHero(struct Hero heroArray[], int len)
{
	for (int i = 0; i< len ;i++)
	{
		cout << "name" << heroArray[i].name << "age" << heroArray[i].age<< "sex" << heroArray[i].sex << endl;
	}
}

int main(){

	// 1 设计英雄结构体
	
	// 2 创建数组存放5名英雄
	struct Hero heroArray[5] = 
	{
		{"liu", 23, "boy"},
		{"guan", 22, "boy"},
		{"zhang", 20, "boy"},
		{"zhao", 21, "boy"},
		{"diao",19,"girl"},
	};	
	int len = sizeof(heroArray)/sizeof(heroArray[0]);
	for (int i = 0; i < len; i++)
	{
		cout << "name" << heroArray[i].name << "age" << heroArray[i].age<< "sex" << heroArray[i].sex << endl;
	}
	// 3 对数组进行排序，按照年龄进行升序排列
	bubbleSort(heroArray,len);

	// 4 将排序后结果打印输出
	printHero(heroArray,len);
	system("ls");

	return 0;

}
