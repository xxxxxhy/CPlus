#include<iostream>
#include<unistd.h>
using namespace std;
#include <string> //string 头文件
#define MAX 1000 //最大人数

//联系人结构体

struct Person
{
    string m_Name; //姓名
    int m_Sex; //性别 1男 2女
    int m_Age; //年龄
    string m_Phone; //电话
    string m_Addr; //住址
};



//通讯录结构体
struct Addressbooks
{
    struct Person personArray[MAX]; //通讯录中保存的联系人数组
    int m_Size; //通讯录中人员个数
};

void addPerson(Addressbooks * abs)
{
    // 判断通讯录是否已满，如果满了就不再添加
    if (abs->m_Size == MAX)
    {
        cout << "通讯录已满，无法添加" << endl;
        return;
    }
    else
    {
        // 添加具体联系人
        //姓名
        string name;
        cout << "请输入姓名：" << endl;
        cin >> name;
        abs->personArray[abs->m_Size].m_Name = name;
        //性别
        int sex = 0;
        cout << "请输入性别：" << endl;
        cout << "1 --- 男" << endl;
        cout << "2 --- 女" << endl;
        while (true)
        {
            cin >> sex;
            if (sex == 1 || sex == 2)
            {
                abs->personArray[abs->m_Size].m_Sex = sex;
                break;
            }
            cout << "输入有误，请重新输入" << endl;
        }
        
        //年龄
        cout << "请输入年龄：" << endl;
        int age = 0;
        while (true)
        {
            cin >> age;
            if (age >= 0 && age <= 150)
            {
                abs->personArray[abs->m_Size].m_Age = age;
                break;
            }
            cout << "输入的年龄不合理，请确认并重新输入" << endl;
        }
        //电话
        string phone;
        cout << "请输入联系电话：" << endl;
        cin >> phone;
        abs->personArray[abs->m_Size].m_Phone = phone; 
        //住址
        string addr;
        cout << "请输入家庭住址：" << endl;
        cin >> addr;
        abs->personArray[abs->m_Size].m_Addr = addr; 

        abs->m_Size++;

        cout << "添加成功" << endl;
	system("sleep 2");
        system("clear"); //清屏操作
    }
}

// 显示所有联系人
void showPerson(Addressbooks * abs)
{
	//判断通讯录中人数是否为0，为0提示记录为空
	//如果不为0，显示记录的联系人信息
	if (abs->m_Size == 0)
	{
		cout << "当前记录为空" << endl;
	}
	else
	{
		for (int i = 0; i < abs->m_Size; i++)
		{
			cout << "姓名：" << abs->personArray[i].m_Name << "\t";
			cout << "性别：" << (abs->personArray[i].m_Sex == 1 ? "男":"女") << "\t";
			cout << "年龄：" << abs->personArray[i].m_Age << "\t";
			cout << "电话：" << abs->personArray[i].m_Phone << "\t";
			cout << "住址：" << abs->personArray[i].m_Addr << endl;

		}
	}
	system("sleep 3");
	system("clear");
}

// 检测联系人是否存在，若存在，返回联系人数组中的索引，不存在返回-1

int isExist(Addressbooks * abs, string name)
{
	for (int i=0; i < abs->m_Size; i++)
	{
		if(abs->personArray[i].m_Name == name)
		{
			return i;
		}
	}
	return -1; // 遍历结束没找到，返回-1
}

//删除指定的联系人
void deletePerson(Addressbooks * abs)
{
	cout << "请输入要删除的联系人姓名" << endl;
	string name;
	cin >> name;
	int ret = isExist(abs,name);
	if (ret != -1)
	{
		for (int i = ret; i < abs->m_Size; i++)
		{
			// 数据前移
			abs->personArray[i] = abs->personArray[i+1];
		}
		abs->m_Size--; //更新通讯录中的人员数
		cout << "删除成功" << endl;
		system("sleep 3");
	}
	else
	{
		cout << "查无此人" << endl;
		system("sleep 2");
	}
	system("clear");
}

// 查找联系人
void findPerson(Addressbooks * abs)
{
	cout << "请输入您要查找的联系人" << endl;
	string name;
	cin >> name;

	// 判断联系人是否存在
	int ret = isExist(abs,name);
	if (ret != -1)
	{
		cout << "姓名:" << abs->personArray[ret].m_Name << "\t";
		cout << "性别:" << abs->personArray[ret].m_Sex << "\t";
		cout << "年龄:" << abs->personArray[ret].m_Age << "\t";
		cout << "电话:" << abs->personArray[ret].m_Phone << "\t";
		cout << "住址:" << abs->personArray[ret].m_Addr << endl;
	
	}
	else
	{
		cout << "查无此人" << endl;
	}
	system("sleep 2");
	system("clear");
}
// 修改联系人

void modifyPerson(Addressbooks * abs)
{
	cout << "请输入您要修改的联系人：" << endl;
	string name;
	cin >> name;
	int ret = isExist(abs,name);
	if (ret != -1)
	{
		string name1;
		cout << "请输入姓名：" << endl;
		cin >> name1;
		abs->personArray[ret].m_Name=name1;

		cout << "请输入性别：" << endl;
		cout << "1 --- 男" << endl;
		cout << "2 --- 女" << endl;
		int sex = 0;
		while(true)
		{
			cin >> sex;
	                if (sex == 1 || sex ==2)
        	        {
                	        abs->personArray[ret].m_Sex = sex;
                        	break;
                	}
			else
			{
				cout << "输入有误，请重新输入" << endl;
			}
		}

		cout << "请输入年龄：" << endl;
	        int age = 0;
	        while (true)
        	{
            	cin >> age;
		//cout << age << endl;
            	if (age >= 0 && age <= 150)
            	{
                	abs->personArray[ret].m_Age = age;
                	break;
            	}
            	cout << "输入的年龄不合理，请确认并重新输入" << endl;
        	}
		
		cout << "请输入联系电话：" << endl;
		string phone;
		cin >> phone;
		abs->personArray[ret].m_Phone=phone;

		cout << "请输入家庭地址：" << endl;
		string addr;
		cin >> addr;
		abs->personArray[ret].m_Addr = addr;

		cout << "修改成功" << endl;
	}

	else
	{
		cout << "查无此人" << endl;
	}
	system("sleep 2");
	system("clear");
}

// 清空联系人
void cleanPerson(Addressbooks * abs)
{
	cout << "请问您确定要清空？" << endl;
	int ret = -1;
	cin >> ret;
	if (ret == 1)
	{
		abs->m_Size = 0;
		cout << "通讯录已清空" << endl;
	}
	
	//abs->m_Size = 0;
	//cout << "通讯录已清空" << endl;
	system("sleep 2");
	system("clear");
}

// 菜单界面
void showMenu()
{

	cout << "*************************" << endl;	
	cout << "***** 1、添加联系人 *****" << endl;
	cout << "***** 2、显示联系人 *****" << endl;
	cout << "***** 3、删除联系人 *****" << endl;
	cout << "***** 4、查找联系人 *****" << endl;
	cout << "***** 5、修改联系人 *****" << endl;
	cout << "***** 6、清空联系人 *****" << endl;
	cout << "***** 0、退出通讯录 *****" << endl;
	cout << "*************************" << endl;	
}

int main(){
    //
    Addressbooks abs;
    //
    abs.m_Size = 0;

	int select = 0; // 创建用户输入变量

	// 菜单调用
	while(true)
	{
		showMenu();

		cin >> select;
		switch (select)
		{
			case 1: // 添加联系人
                		addPerson(&abs); // 利用地址传递，可以修饰实参
				break;
			case 2: // 显示联系人
				showPerson(&abs);
				break;
			case 3: // 删除联系人
		/*	{
				cout << "请输入删除联系人姓名：" << endl;
				string name;
				cin >> name;
				if (isExist(&abs,name)==-1)
				{
					cout << "查无此人" << endl;
				}
				else
				{
					cout << "找到此人" << endl;
				}
			}*/
				deletePerson(&abs);
				break;
			case 4: // 查找联系人
				findPerson(&abs);
				break;
			case 5: // 修改联系人 
				modifyPerson(&abs);
				break;
			case 6: // 清空联系人
				cleanPerson(&abs);
				break;
			case 0: // 退出通讯录
				cout << "欢迎下次使用" << endl;
				system ("sleep 2");
				return 0;
				break;
			default:
				break;
		}
	}	


	system("ls");

	return 0;

}
