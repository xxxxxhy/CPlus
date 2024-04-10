#include<iostream>
using namespace std;

// 类做友元

class Building;

class GoodGay
{
	public:
		GoodGay();
	public:
		void visit(); //
		Building * building;
};


void test01()
{
	GoodGay gg;
	gg.visit();
};

class Building
{
	friend class GoodGay;
	public:
		Building();
	public:
		string m_SittingRoom;
		
	private:
		string m_BedRoom;
};
// 类外写成员函数
Building::Building()
{
	m_SittingRoom = "ke";
	m_BedRoom = "wo";
};
GoodGay::GoodGay()
{
	building = new Building;
}
void GoodGay::visit()
{
	cout << "goodgay is going:" << building->m_SittingRoom << endl;
	cout << "goodgay is going:" << building->m_BedRoom << endl;
};



int main(){
	test01();	
	system("ls");

	return 0;

}
