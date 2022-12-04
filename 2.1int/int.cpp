#include<iostream>
#include<math.h>
using namespace std;

int main(){

	//1. short(-32768~32767)
	
	short num1 = 32768;

	//2. int(-2^31~2^31-1)
	
	int num2 = 2147483648;

	//3. long(Windows -2^31~2^31-1, Linux 32 -2^31~2^31-1, Linux64 -2^63~2^63-1)
	
	long num3 = 9223372036854775807;

	//4. long long(-2^63~2^63-1)
	

	long long num4 = 9223372036854775807;

	cout << "num1 = " << num1 << endl;
	cout << "num2 = " << num2 << endl;
	cout << "num3 = " << num3 << endl;
	cout << "num4 = " << num4 << endl;
	
	system("ls");

	return 0;

}
