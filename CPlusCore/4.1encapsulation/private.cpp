#include<iostream>
using namespace std;
// 成员属性私有化
// 优点1：将所有成员属性设置为私有，可以自己控制读写权限
// 优点2：对于写权限，我们可以检测数据有效性
class Person
{
	public:
		// 写姓名
		void setName(string name)
		{
			m_Name = name;
		}
		// 读姓名
		string getName()
		{
			return m_Name;
		}
		// 获取年龄 可读可写 若想（0-150）
		int getAge()
		{
			m_Age = 0;
			return m_Age;
		}

		void setAge(int age)
		{
			if (age < 0 || age > 150)
			{
				m_Age = 0;
				cout << "fail" << endl;
				return;	
			}
			m_Age = age;
		}
		// 设置情人
		void setLover(string lover)
		{
			m_Lover = lover;
		}
		//
		//
	private:
		string m_Name;  // 可读可写
		int m_Age;  //只读
		string m_Lover;  // 只写
	
};

int main(){
	
	system("ls");
	
	return 0;

}
