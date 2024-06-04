### 3.2 vector容器



#### 3.2.1 vector基本概念

**功能：**

* vector数据结构和**数组非常相似**，也称为**单端数组**



**vector与普通数组区别：**

* 不同之处在于数组是静态空间，而vector可以**动态扩展**



**动态扩展：**

* 并不是在原空间之后续接新空间，而是找更大的内存空间，然后将原数据拷贝新空间，释放原空间



![说明: 2015-11-10_151152](.\clip_image002.jpg)



* vector容器的迭代器是支持随机访问的迭代器



#### 3.2.2 vector构造函数



**功能描述：**

* 创建vector容器



**函数原型：**

* `vector<T> v; `               		     //采用模板实现类实现，默认构造函数
* `vector(v.begin(), v.end());   `       //将v[begin(), end())区间中的元素拷贝给本身。
* `vector(n, elem);`                            //构造函数将n个elem拷贝给本身。
* `vector(const vector &vec);`         //拷贝构造函数。



**总结：**vector的多种构造方式没有可比性，灵活使用即可



#### 3.2.3 vector赋值操作



**功能描述：**

* 给vector容器进行赋值



**函数原型：**

* `vector& operator=(const vector &vec);`//重载等号操作符


* `assign(beg, end);`       //将[beg, end)区间中的数据拷贝赋值给本身。
* `assign(n, elem);`        //将n个elem拷贝赋值给本身。



总结： vector赋值方式比较简单，使用operator=，或者assign都可以



#### 3.2.4  vector容量和大小

**功能描述：**

* 对vector容器的容量和大小操作



**函数原型：**

* `empty(); `                            //判断容器是否为空

* `capacity();`                      //容器的容量

* `size();`                              //返回容器中元素的个数

* `resize(int num);`             //重新指定容器的长度为num，若容器变长，则以默认值填充新位置。

  ​					      //如果容器变短，则末尾超出容器长度的元素被删除。

* `resize(int num, elem);`  //重新指定容器的长度为num，若容器变长，则以elem值填充新位置。

  ​				              //如果容器变短，则末尾超出容器长度的元素被删除



总结：

* 判断是否为空  --- empty
* 返回元素个数  --- size
* 返回容器容量  --- capacity
* 重新指定大小  ---  resize



#### 3.2.5 vector插入和删除

**功能描述：**

* 对vector容器进行插入、删除操作



**函数原型：**

* `push_back(ele);`                                         //尾部插入元素ele
* `pop_back();`                                                //删除最后一个元素
* `insert(const_iterator pos, ele);`        //迭代器指向位置pos插入元素ele
* `insert(const_iterator pos, int count,ele);`//迭代器指向位置pos插入count个元素ele
* `erase(const_iterator pos);`                     //删除迭代器指向的元素
* `erase(const_iterator start, const_iterator end);`//删除迭代器从start到end之间的元素
* `clear();`                                                        //删除容器中所有元素



总结：

* 尾插  --- push_back
* 尾删  --- pop_back
* 插入  --- insert    (位置迭代器)
* 删除  --- erase  （位置迭代器）
* 清空  ---  clear  



#### 3.2.6 vector数据存取



**功能描述：**

* 对vector中的数据的存取操作



**函数原型：**

* `at(int idx); `     //返回索引idx所指的数据
* `operator[]; `       //返回索引idx所指的数据
* `front(); `            //返回容器中第一个数据元素
* `back();`              //返回容器中最后一个数据元素



总结：

* 除了用迭代器获取vector容器中元素，[ ]和at也可以
* front返回容器第一个元素
* back返回容器最后一个元素



#### 3.2.7 vector互换容器

**功能描述：**

* 实现两个容器内元素进行互换



**函数原型：**

* `swap(vec);`  // 将vec与本身的元素互换



总结：swap可以使两个容器互换，可以达到实用的收缩内存效果



#### 3.2.8 vector预留空间

**功能描述：**

* 减少vector在动态扩展容量时的扩展次数



**函数原型：**

* `reserve(int len);`//容器预留len个元素长度，预留位置不初始化，元素不可访问。



总结：如果数据量较大，可以一开始利用reserve预留空间