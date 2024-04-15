#include<iostream>
using namespace std;

// 继承方式一共有三种 
// 公共继承
// 保护继承
// 私有继承

class Base1
{
	public:
		int m_A;
	protected:
		int m_B;
	private:
		int m_C;
};

class Son1 :public Base1
{
	public:
		void func()
		{
			m_A = 10; // 父类中公共权限成员，到子类中依然是公共权限
			m_B = 10; // 父类中保护权限成员，到子类中依然是保护权限
			//m_C = 10; // 父类中的私有权限成员，子类无法访问
		}
};
class Son2 :protected Base1
{
	public:
		void func()
		{
			m_A = 10; // 父类中公共权限成员，到子类中是保护权限
			m_B = 10; // 父类中保护权限成员，到子类中依然是保护权限
			//m_C = 10; // 父类中的私有权限成员，子类无法访问
		}
};
class Son3 :private Base1
{
	public:
		void func()
		{
			m_A = 10; // 父类中公共权限成员，到子类中是私有权限
			m_B = 10; // 父类中保护权限成员，到子类中是私有权限
			//m_C = 10; // 父类中的私有权限成员，子类无法访问
		}
};

void test01()
{
	Son1 s1;
	s1.m_A = 1000;
	//s1.m_B = 1000; // 保护权限无法访问

	Son2 s2;
	//s2.m_A = 1000; // 保护权限无法访问
	//s2.m_B = 1000; // 保护权限无法访问

	Son3 s3;
	//s3.m_A = 1000; // 私有权限无法访问
	//s3.m_B = 1000; // 私有权限无法访问
}

int main(){
	test01();	
	system("ls");

	return 0;

}
