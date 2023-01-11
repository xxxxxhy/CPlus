#include<iostream>
using namespace std;
// 案例描述：封装一个函数，利用冒泡排序，实现对整型数组的升序排序

// 冒泡排序函数 参数1 数组首地址  参数2 数组长度
void bubbleSort(int *arr, int l)
{
	for (int i = 0; i < l -1; i++)
	{
		for(int j = 0; j < l - i -1; j++)
		{
			// 如果j > j+1 的值 ，则交换
			if (arr[j] > arr[j+1])
			{
				int temp = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = temp;
			}
		}
	}
}

void printArray(int * arr, int l)
{
	for (int i =0 ; i< l; i++)
	{
		cout << arr[i] << endl;
	}
}

int main(){
	
	// 1. 创建数组
	
	int arr[10] = {4,3,6,9,1,2,10,8,7,5};

	// 2. 创建函数，实现冒泡排序
	int len = sizeof(arr) / sizeof(arr[0]);
	bubbleSort(arr,len);

	// 3. 打印排序后数组

	printArray(arr, len);

	system("ls");

	return 0;

}
