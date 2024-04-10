#include<iostream>
using namespace std;

// 
class Building;
class GoodGay
{
	public:
		GoodGay();
		void visit(); // 使此函数可访问Building私有成员

		void visit2(); // 使此函数不可访问Building私有成员
		Building * building;
};

class Building
{
	friend void GoodGay::visit();
	public:
		Building();
	public:
		string m_SittingRoom;
	private:
		string m_BedRoom;
};

// 类外实现成员函数
Building::Building()
{
	m_SittingRoom = "ke";
	m_BedRoom = "wo";
};

GoodGay::GoodGay()
{
	building = new Building;
};

void GoodGay::visit()
{
	cout << "visit is in:" << building->m_SittingRoom << endl;
	cout << "visit is in:" << building->m_BedRoom << endl;
};
void GoodGay::visit2()
{	
	cout << "visit2 is in:" << building->m_SittingRoom << endl;
		
};

void test01()
{
	GoodGay gg;
	gg.visit();
	gg.visit2();
};

int main(){
	
	test01();
	system("ls");

	return 0;

}
