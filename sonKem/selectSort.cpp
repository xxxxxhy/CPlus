#include<iostream>
using namespace std;


void selectSort(int *arr,int n)
{
	for (int i=0;i<n-1;i++)
	{
		for (int j=0;j<n-i-1;j++)
		{
			if (arr[i]>arr[j])
			{
				int temp = arr[j];
				arr[j] = arr[i];
				arr[i] = temp;			
			}
		}
	}
}

int main()
{
	
	system("ls");
}
