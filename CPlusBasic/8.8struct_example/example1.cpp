#include<iostream>
using namespace std;
#include<string>
#include<ctime>
struct student
{
	string name;
	int score;
};
struct teacher
{
	string name;
	struct student sArray[5];
};
void allocateSpace(struct teacher tArray[], int len)
{
	string nameSeed = "ABCDE";
	for (int i = 0; i< len; i++)
	{	
		tArray[i].name = "Teacher_";
		tArray[i].name += nameSeed[i];
		for (int j = 0; j<5; j++)
		{	
			int random = rand() % 61 +40;
			tArray[i].sArray[j].name = "Student_";
			tArray[i].sArray[j].name += nameSeed[j];
			tArray[i].sArray[j].score = random;
		}
	}
}
void printInfo(struct teacher tArray[], int len)
{
	for (int i=0; i<len; i++)
	{
		cout << "teacher_name: " << tArray[i].name << endl;
		for (int j=0;j<5;j++)
		{
			cout << "\tstudent_name: " << tArray[i].sArray[j].name << " score: " << tArray[i].sArray[j].score << endl;
		}
	}
}
int main(){
	// rand seed
	srand((unsigned int)time(NULL));
	struct teacher tArray[3];
	int len = sizeof(tArray) / sizeof(tArray[0]);
	allocateSpace(tArray, len);
	printInfo(tArray, len);
	system("ls");

	return 0;

}
