# C++核心编程

此阶段主要针对C++面向对象编程技术



## 1 内存分区模型

C++程序在执行时，将内存大方向划分为4个区域

- 代码区： 存放函数体的二进制代码，由操作系统进行管理
- 全局区： 存放全局变量和静态变量以及常量
- 栈区： 由编译器自动分配释放，存放函数的参数值，局部变量等
- 堆区： 由程序员分配和释放，若程序员不释放，程序结束时由操作系统回收

##### 内存四区意义：

不同区域存放的数据，赋予不同的生命周期，编程可以更加灵活。



#### 1.1 程序运行前

在程序编译后，生成可执行程序，未执行该程序前分为两个区域

##### 代码区

​	存放CPU执行的机器指令

​	代码区是**共享**的，共享的目的是对于频繁操作被执行的程序，只需要在内存中有一份代码即可

​	代码区是**只读**的，使其只读的原因是防止程序意外地修改了它的指令

##### 全局区：

​	全局变量和静态变量存放在此

​	全局区还包括了常量区，字符串常量和其他常量也存放在此

​	该区域的数据在程序结束后由操作系统释放



#### 1.2 程序运行后

##### 栈区：

​	由编译器自动分配释放，存放函数的参数值，局部变量等

​	**注意事项：不要返回局部变量的地址，栈区开辟的数据由编译器自动释放。**

##### 堆区：

​	由程序员分配释放，若程序员不释放，程序结束时由操作系统回收

​	在C++中主要利用new在堆区开辟内存

#### 1.3 new操作符

C++中利用new操作符在堆区开辟数据

堆区开辟的数据，由程序员手动开辟，手动释放，释放利用操作符delete

语法：`new 数据类型`

利用new创建的数据，会返回该数据对应的类型的指针



## 2 引用



#### 2.1 引用的基本使用

作用：给变量起名

语法：`数据类型 &别名 = 原名`



#### 2.2 引用注意事项

- 引用必须初始化
- 引用在初始化后，不可以改变



#### 2.3 引用做函数参数

作用： 函数传参时，可以利用引用的技术让形参修饰实参

优点： 可以简化指针修改实参



#### 2.4 引用做函数的返回值

作用：引用是可以作为函数的返回值存在的



注意：不要返回局部变量引用

用法：函数调用作为左值



#### 2.5 引用的本质

本质：引用的本质在c++内部实现是一个指针常量



#### 2.6 常量引用

作用：常量引用主要用来修饰形参，防止误操作



在函数形参列表中，可以加const修饰形参，防止形参改变实参
