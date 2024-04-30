#include<iostream>
using namespace std;
// 案例描述： 分别利用普通写法和多态技术，设计实现两个操作数进行运算的计算器类

// 多态的优点：
// 1. 代码组织结构清晰
// 2. 可读性强
// 3. 利于前期和后期的扩展以及维护

// 普通写法
class Calculator {
	public:
		int getResult(string oper)
		{
			if (oper == "+")
			{
				return m_Num1+m_Num2;
			}
			else if(oper == "-")
			{
				return m_Num1-m_Num2;
			}
			else if (oper == "*")
			{
				return m_Num1*m_Num2;
			}
			else{
				return m_Num1;
			}

			// 如果想扩展新功能，需要修改源码
			// 在真实开发中，提倡开闭原则
			// 开闭原则：对扩展进行开放，对修改进行关闭
		}
		int m_Num1;
		int m_Num2;


};

// 利用多态实现计算器

// 实现计算器抽象类

class AbstractCaculator
{
	public:
		virtual int getResult()
		{
			return 0;
		}
	int m_Num1;
	int m_Num2;
};

// 加法计算器类
class AddCalculator :public AbstractCaculator
{
	public:
		int getResult()
		{
			return m_Num1 + m_Num2;
		}
};
// 减法计算器类
class SubCalculator :public AbstractCaculator
{
	public:
		int getResult()
		{
			return m_Num1 - m_Num2;
		}
};
// 乘法计算器类
class MulCalculator :public AbstractCaculator
{
	public:
		int getResult()
		{
			return m_Num1 * m_Num2;
		}
};



void test01()
{
	// 创建计算器对象
	Calculator c;
	c.m_Num1 = 10;
	c.m_Num2 = 10;

	cout << c.m_Num1 << "+" << c.m_Num2 << "=" << c.getResult("+") << endl;
	cout << c.m_Num1 << "-" << c.m_Num2 << "=" << c.getResult("-") << endl;
	cout << c.m_Num1 << "*" << c.m_Num2 << "=" << c.getResult("*") << endl;
}
// 利用多态实现计算器
// 多态好处：
// 1. 组织结构清晰
// 2. 可读性强
// 3. 前期和后期扩展以及维护性高
void test02()
{
	// 多态使用条件
	// 父类指针或者引用指向子类对象
	AbstractCaculator *abc = new AddCalculator;
	abc->m_Num1 = 10;
	abc->m_Num2 = 10;
	cout << abc->m_Num1 << "+" << abc->m_Num2 << "=" << abc->getResult() << endl;
	// 堆区数据用完记得销毁
	delete abc;

}
int main(){
	test01();
	test02();	
	system("ls");

	return 0;

}
