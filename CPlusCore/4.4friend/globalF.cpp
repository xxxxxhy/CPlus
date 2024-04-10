#include<iostream>
using namespace std;

class Building
{
	// goodGay1:全局函数为Building的友元，可以访问其私有属性
	friend void goodGay1(Building *building);
	public:
		Building()
		{
			m_SittingRoom = "ke";
			m_BedRoom = "wo";
		}
	public:
		string m_SittingRoom; 
	private:
		string m_BedRoom;
};

// 全局函数
void goodGay(Building *building)
{
	cout << "goodgay going:" << building->m_SittingRoom << endl;
	// cout << "goodgay going:" << building->m_BedRoom << endl; 访问私有属性 违反语法规则
};
void goodGay1(Building *building)
{
	cout << "goodgay going:" << building->m_SittingRoom << endl;
	cout << "goodgay going:" << building->m_BedRoom << endl; 
};


void test01()
{
	Building building;
	goodGay(&building);
	goodGay1(&building);
};

int main(){
	test01();
	system("ls");

	return 0;

}
