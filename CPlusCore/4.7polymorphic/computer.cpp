#include<iostream>
using namespace std;

class CPU
{
	public:
		virtual void calculate() = 0;
};

class VideoCard
{
	public:
		virtual void display() = 0;
};

class Memery
{
	public:
		virtual void storage() = 0;
};

class Computer
{
	public:
		Computer(CPU *c,VideoCard *v,Memery *m)
		{
			m_c = c;
			m_v = v;
			m_m = m;
		}
		~Computer()
		{
			if (m_c!=NULL)
			{
				delete m_c;
				m_c = NULL;
			}
			if (m_v!=NULL)
			{
				delete m_v;
				m_v = NULL;
			}
			if (m_m!=NULL)
			{
				delete m_m;
				m_m = NULL;
			}
		}
		void work()
		{
			m_c->calculate();
			m_v->display();
			m_m->storage();
		}
	private:
		CPU *m_c;
		VideoCard *m_v;
		Memery *m_m;
};

class IntelCpu :public CPU
{
	public:
		void calculate()
		{
			cout << "IntelCPU is calculating" << endl;
		}
};

class IntelVC :public VideoCard
{
	public:
		void display()
		{
			cout << "IntelVC is displaying" << endl;
		}
};

class IntelMem :public Memery
{
	public:
		void storage()
		{
			cout << "IntelMem is storaging" << endl;
		}
};

class LenovoCpu :public CPU
{
	public:
		void calculate()
		{
			cout << "LenovoCPU is calculating" << endl;
		}
};

class LenovoVC :public VideoCard
{
	public:
		void display()
		{
			cout << "LenovoVC is displaying" << endl;
		}
};

class LenovoMem :public Memery
{
	public:
		void storage()
		{
			cout << "LenovoMem is storaging" << endl;
		}
};

void test01()
{
	CPU * intelC = new IntelCpu;
	VideoCard * intelVC = new IntelVC;
	Memery * intelMem = new IntelMem;

	Computer * c1 = new Computer(intelC,intelVC,intelMem);

	c1->work();

	delete c1;

}


int main(){
	test01();
	system("ls");

	return 0;

}
