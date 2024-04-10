#include<iostream>
using namespace std;
// C++中空指针也是可以调用成员函数的，但是要注意有没有用到this指针
// 若用到this指针，需要加以判断保证代码的健壮性
//

class Person
{
	public:
		void showClassName()
		{
			cout << "this is Person Class" << endl;
		}

		void showPersonAge()
		{
			if (this == NULL)
			{
				return;
			};
			cout << "age = " << m_Age << endl;
		}
		int m_Age;
};

void test01()
{
	Person * p = NULL;
	
	p->showClassName();
	// 下行代码会报错，报错原因是由于传入指针是NULL，若类中针对空指针有处理，则不会报错
	p->showPersonAge();
};

int main(){
	test01();	
	system("ls");

	return 0;

}
