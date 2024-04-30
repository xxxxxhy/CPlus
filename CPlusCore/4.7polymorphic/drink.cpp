#include<iostream>
using namespace std;

class AbstractDrinking
{
	public:
		virtual void Boil() = 0;
		virtual void Brew() = 0;
		virtual void PourInCup() = 0;
		virtual void PutSomeThing() = 0;

		void makeDrink()
		{
			Boil();
			Brew();
			PourInCup();
			PutSomeThing();
		}
};

// 制作咖啡
class Cooffe :public AbstractDrinking
{
	public:
		virtual void Boil()
		{
			cout << "煮娃哈哈" << endl;
		}
		virtual void Brew()
		{
			cout << "冲泡咖啡" << endl;
		}
		virtual void PourInCup()
		{
			cout << "倒入杯中" << endl;
		}
		virtual void PutSomeThing()
		{
			cout << "加入糖和牛奶" << endl;
		}
};
// 制作茶叶
class Tee :public AbstractDrinking
{
	public:
		virtual void Boil()
		{
			cout << "煮矿泉书" << endl;
		}
		virtual void Brew()
		{
			cout << "冲泡茶叶" << endl;
		}
		virtual void PourInCup()
		{
			cout << "倒入杯中" << endl;
		}
		virtual void PutSomeThing()
		{
			cout << "加入枸杞" << endl;
		}
};

void doWork(AbstractDrinking *abc)
{
	abc->makeDrink();
	delete abc;
}

void test01()
{
	doWork(new Cooffe);
	doWork(new Tee);
}

int main(){
	test01();
	system("ls");

	return 0;

}
