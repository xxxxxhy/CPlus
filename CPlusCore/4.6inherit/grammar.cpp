#include<iostream>
using namespace std;
// 很多网站中，都有公共的头部，公共的地步，甚至公共的左侧列表，只有中心内容不同

// 继承的好处：减少重复代码
// 语法：class 子类 : 继承方式(public等) 父类
// 子类也称为派生类 父类也称为基类

// 派生类中的成员，包含两部分 
// 一类是从基类继承过来的，一类是自己增加的成员
// 从基类继承来的表现其共性，而新增的成员体现其个性

// 普通实现页面

// JAVA页面
class JAVA{
	public:
		void header()
		{
			cout << "首页、公开课、登录、注册...(公共头部)" << endl;
		}
		void footer()
		{
			cout << "帮助中心、交流合作等(公共底部)" << endl;
		}
		void left()
		{
			cout << "JAVA,Python,C++...(公共分类列表)" <<endl;
		}
		void content()
		{
			cout << "JAVA学科视频" << endl;
		}
};

// Python页面
class Python{
	public:
		void header()
		{
			cout << "首页、公开课、登录、注册...(公共头部)" << endl;
		}
		void footer()
		{
			cout << "帮助中心、交流合作等(公共底部)" << endl;
		}
		void left()
		{
			cout << "JAVA,Python,C++...(公共分类列表)" <<endl;
		}
		void content()
		{
			cout << "Python学科视频" << endl;
		}
};

// C++
class CPP{
	public:
		void header()
		{
			cout << "首页、公开课、登录、注册...(公共头部)" << endl;
		}
		void footer()
		{
			cout << "帮助中心、交流合作等(公共底部)" << endl;
		}
		void left()
		{
			cout << "JAVA,Python,C++...(公共分类列表)" <<endl;
		}
		void content()
		{
			cout << "C++学科视频" << endl;
		}
};

// 继承实现页面

//公共页面类

class BasePage
{
	public:
		void header()
		{
			cout << "首页、公开课、登录、注册...(公共头部)" << endl;
		}
		void footer()
		{
			cout << "帮助中心、交流合作等(公共底部)" << endl;
		}
		void left()
		{
			cout << "JAVA,Python,C++...(公共分类列表)" <<endl;
		}	
};

// Java页面
class Java1 : public BasePage
{
	public:
		void content()
		{
			cout << "Java" << endl;
		}
};
// Python页面
class Python1 : public BasePage
{
	public:
		void content()
		{
			cout << "Python" << endl;
		}
};
// C++ Python页面
class Cpp1 : public BasePage
{
	public:
		void content()
		{
			cout << "Cpp" << endl;
		}
};

void test01()
{
	cout << "JAVA页面如下：" << endl;

	JAVA ja;
	ja.header();
	ja.footer();
	ja.left();
	ja.content();

	cout << "---------------------" << endl;
	cout << "Python页面如下：" << endl;

	Python py;
	py.header();
	py.footer();
	py.left();
	py.content();

	cout << "---------------------" << endl;
	cout << "C++页面如下：" << endl;

	CPP cpp;
	cpp.header();
	cpp.footer();
	cpp.left();
	cpp.content();
}

void test02()
{
	cout << "JAVA页面如下：" << endl;

	Java1 ja;
	ja.header();
	ja.footer();
	ja.left();
	ja.content();

	cout << "---------------------" << endl;
	cout << "Python页面如下：" << endl;

	Python1 py;
	py.header();
	py.footer();
	py.left();
	py.content();

	cout << "---------------------" << endl;
	cout << "C++页面如下：" << endl;

	Cpp1 cpp;
	cpp.header();
	cpp.footer();
	cpp.left();
	cpp.content();
}

int main(){
	test01();	
	test02();
	system("ls");

	return 0;

}
