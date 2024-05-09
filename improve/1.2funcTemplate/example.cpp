#include<iostream>
using namespace std;
// 利用函数模板封装一个排序函数，可以对不同数据类型数组进行排序
// 排序规则从大到小，排序算法为选择排序
// 分别利用char数组和int数组进行测试
template<class T>
void mySort(T&a,T&b)
{
	T temp = a;
	a = b;
	b = temp;
}
template<typename T>
void mySort(T arr[], int len)
{
	for (int i = 0; i < len; i++)
	{
		int max = i;
		for (int j = i+1; j<len; j++)
		{
			if(arr[max] < arr[j])
			{
				max = j;
			}
		}
		if (max != i)
		{
			mySort(arr[max],arr[i]);
		}
	}
}

template<class T>
void printArray(T arr[], int len)
{
	for (int i = 0; i < len; i++)
	{
		cout << arr[i] << " ";
	}
	cout << endl;
}

void test01()
{
	char charArr[] = "badcfe";
	int num = sizeof(charArr)/sizeof(char);
	mySort(charArr,num);
	printArray(charArr,num);

	int intArr[] = {2,345,45,46,56,6,5,32,3};
	int num1 = sizeof(intArr)/sizeof(int);
	mySort(intArr,num1);
	printArray(intArr,num1);
}

int main(){
	test01();
	system("ls");

	return 0;

}
