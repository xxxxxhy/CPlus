#include<iostream>
using namespace std;

bool judgeChild(string a,string b)
{
	cout << a << endl;
	cout << b[1] << endl;
	for (int i=0;i<a.length();i++)
	{
		for (int j=0;j<b.length();j++)
		{
			cout << a[i+j] << " " << b[j] << endl; 
			cout << (a[i+j] == b[j]) << endl;
			if ((a[i+j] == b[j] || a[i+j]==b[j]+32 || a[i+j]==b[j]-32) )//&& (a[i+j]>="A" && a[i+j]<="z"))
			{
				if (j==b.length()-1)
				{
					return true;
				}
				continue;
			}
			else
			{
				break;
			}
		}
			
	}
	return false;
}

int main()
{
	string a = "judge";
	string b = "Ge";
	bool ret = judgeChild(a,b);
	
	cout << ret << endl;
	system("ls");
}
