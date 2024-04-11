#include<iostream>
using namespace std;
// 作用：通过重载递增运算符，实现自己的整型数据
// 重载递增运算符
// 自定义整型

// 需注意，前置递增返回的是引用，后置递增返回的是值
class MyInteger
{
	friend ostream & operator<<(ostream & cout,MyInteger myint);
	public:
		MyInteger()
		{
			m_Num = 0;
		}

		// 重载前置++
		MyInteger& operator++()
		{
			m_Num++;
			return *this;
		}
		// 重载后置++
		// int代表占位参数，可以用于区分前置和后置递增
		// 返回值的原因在于，创建的临时变量在函数关闭后就会自动销毁，引用会指向乱码
		MyInteger operator++(int)
		{
			// 先 返回结果(记录当时结果)
			MyInteger temp = *this;
			// 后 递增
			m_Num++;
			// 最后将记录结果做返回
			return temp;
		}
	private:
		int m_Num;
};

ostream & operator<<(ostream & cout,MyInteger myint)
{
	cout << myint.m_Num;
	return cout;
}

void test01()
{
	MyInteger myint;
	cout << ++(++myint) << endl;
	cout << myint << endl;
}
void test02()
{
	MyInteger myint;
	cout << myint++ << endl;
	cout << myint << endl;
}


int main(){
	test01();
	test02();
	system("ls");

	return 0;

}
