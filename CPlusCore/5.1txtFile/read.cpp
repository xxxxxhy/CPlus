#include<iostream>
#include<fstream>
using namespace std;

void test01()
{
	ifstream ifs;
	ifs.open("./write.txt",ios::in);
	if (!ifs.is_open())
	{
		cout << "open fail" << endl;
		return;
	}
	// 第一种	
	//char buf[1024] = {0};
	//while (ifs>>buf)
	//{
	//	cout << buf <<endl;
	//}

	// 第二种
	//char buf[1024] = {0};
	//while (ifs.getline(buf,sizeof(buf)))
	//{
	//	cout << buf << endl;
	//}
	
	// 第三种
	//string buf;
	//while(getline(ifs,buf))
	//{
	//	cout << buf << endl;
	//}

	// 第四种
	char c;
	while((c = ifs.get())!=EOF)
		{
			cout << c;
		}

	ifs.close();
	
}

int main(){
	test01();
	system("ls");

	return 0;

}
