#pragma once
#include <iostream>
using namespace std;

template<class T>
class MyArray
{
	public:
		// 有参构造 参数 容量
		MyArray(int capacity)
		{
			//cout << "MyArray param using" << endl;
			this->m_Capacity = capacity;
			this->m_Size = 0;
			this->pAddress = new T[this->m_Capacity];
		}

		// 拷贝构造
		MyArray(const MyArray& arr)
		{
			//cout << "MyArray copy using" << endl;
			this->m_Capacity = arr.m_Capacity;
			this->m_Size = arr.m_Size;
			this->pAddress = new T[arr.m_Capacity];
			// 将arr中的数据都拷贝过来
			for (int i = 0; i < this->m_Size; i++)
			{
				this->pAddress[i] = arr.pAddress[i];
			}
		}

		// operator= 防止浅拷贝问题
		MyArray& operator=(const MyArray& arr)
		{
			// 先判断原堆区是否有数据，若有则先释放
			//cout << "MyArray operator using" << endl;
			if (this->pAddress!=NULL)
			{
				delete[] this->pAddress;
				this->pAddress = NULL;
				this->m_Capacity = 0;
				this->m_Size = 0;
			}
			// 深拷贝
			this->m_Capacity = arr.m_Capacity;
			this->m_Size = arr.m_Size;
			this->pAddress = new T[arr.m_Capacity];
			for (int i = 0; i < this->m_Size; i++)
			{
				this->pAddress[i] = arr.pAddress[i];
			}
			return *this;
		}
		// 尾插法
		void Push_Back(const T & val)
		{
			// 判断容量是否等于大小
			if (this->m_Capacity == this->m_Size)
			{
				return;
			}
			this->pAddress[this->m_Size] = val; // 在数组末尾插入数据
			this->m_Size++; // 更新数组大小
		}
		// 尾删法
		void Pop_Back()
		{
			// 让用户无法访问最后一个元素即可
			if (this->m_Size==0)
			{
				return;
			}
			this->m_Size--;
		}
		
		// 通过下标方式访问数组元素
		T& operator[](int index)
		{
			return this->pAddress[index];
		}

		// 返回数组容量
		int getCapacity()
		{
			return this->m_Capacity;
		}

		// 返回数组大小
		int getSize()
		{
			return this->m_Size;
		}

		// 析构函数
		~MyArray()
		{
			if(this->pAddress!=NULL)
			{
				//cout << "MyArray destru using" << endl;
				delete[] this->pAddress;
				this->pAddress = NULL;
			}
		}
	private:
		T * pAddress; // 指针指向堆区开辟的真实数组

		int m_Capacity; // 数组容量

		int m_Size; // 数组大小

};
