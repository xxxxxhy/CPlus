#include<iostream>
using namespace std;
// 常见的函数样式有4种
// 1. 无参无返
void test01()
{
	cout << "this is test01" << endl;
}
// 2. 有参无返
void test02(int a)
{
	cout << "this is test02 a = " << a << endl;
}

// 3. 无参有返
int test03()
{
	cout << "this is test03" << endl;
	return 1000;
}

// 4. 有参有返
int test04(int a)
{
	cout << "this is test04 a = " << a << endl;
	return a;
}


int main(){
	
	test01();
	test02(100);
	int test3 = test03();
	cout << "test03 return value " << test3 << endl;
	int test4 = test04(10000);
	cout << "test04 return value " << test4 << endl;
	
	system("ls");

	return 0;

}
