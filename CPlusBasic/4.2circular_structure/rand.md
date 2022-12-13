# 随机数

> 添加随机数种子，利用当前系统时间生成随机数，防止每次随机数都一样

```C++
#include <ctime>
// time系统时间头文件包含

int main()
{
	srand((unsigned int)time(NULL));
	int a = rand();
}
```
