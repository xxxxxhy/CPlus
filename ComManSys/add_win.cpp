using namespace std;
#include <string> //string 头文件
//联系人结构体

struct Person
{
    string m_Name; //姓名
    int m_Sex; //性别 1男 2女
    int m_Age; //年龄
    string m_Phone; //电话
    string m_Addr; //住址
};

#define MAX 1000 //最大人数

//通讯录结构体
struct Addressbooks
{
    struct Person personArray[MAX]; //通讯录中保存的联系人数组
    int m_Size; //通讯录中人员个数
};

int main()
{
    system("pause");
    return 0;
}