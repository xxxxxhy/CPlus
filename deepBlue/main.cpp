#include <iostream>

void fun(const char* pInfo)
{
    std::cout << pInfo << std::endl;
    return;
}

int main() {
    std::cout << "Hello, World!" << std::endl;
    fun("Hello World");
    fun("Hello China");
    return 0;
}
