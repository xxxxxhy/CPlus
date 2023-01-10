
// 包含头文件 注意要用双引号，表示是自定义的头文件
#include "swap.h"
//using namespace std;


void swap(int a, int b)
{
        int temp = a;
        a = b;
        b = temp;
        cout << "a = " << a << endl;
        cout << "b = " << b << endl;
}

