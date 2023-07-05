#include<unistd.h>
#include<stdio.h>
#include<fcntl.h>
#include<string.h>
#include<iostream>
#include <readline/readline.h> 
#include <readline/history.h>

using namespace std;

// 获取字符串长度
int get_length(char* str);

//读取文本中一行的信息，并对读取到的key和value进行保存
int m_readline(int fd,char* t_key,char* t_value);

// 获取文本中存储的用户个数
int get_count(int fd);

// 用于查找key对应的键值
void search(int fd,char* s_key);

//交互式循环
void talk();