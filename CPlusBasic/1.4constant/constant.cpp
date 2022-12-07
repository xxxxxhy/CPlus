#include<iostream>
using namespace std;

//constant define
//1. #define Macro constants
//2. const Decorate variables

//1
#define Day 7

int main(){

	cout << "a week include:" << Day << "days" << endl;
	
	//2
	
	const int month = 12;
	
	cout << "a year include:" << month << "months" << endl;
	return 0;

}
