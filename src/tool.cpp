#include"tool.h"

// 获取字符串长度
int get_length(char* str)
{
	int len=0;
	char* temp=str;
	while(*temp!='\0')
	{
		len++;
		temp++;
	}
	return len;
}
//读取文本中一行的信息，并对读取到的key和value进行保存
int m_readline(int fd,char* t_key,char* t_value)
{
	// 记录读取到的字符
	char temp;
	char* tk=t_key;
	char* tv=t_value;
	// 用于区分当前存储key还是value（遇到空格就是下一个值，即flag切换为1）
	int flag=0;
	int ret=0;
	while(ret=read(fd,&temp,1)>0)
	{
		if(temp=='\n')
			return 1;
		if(temp==' ')
		{
			//printf("have kongge\n");
			flag=1;
			continue;
		}
		if(flag==0)
		{
			*t_key=temp;
            t_key++;
		}
		else
		{
			*t_value=temp;
			t_value++;
		}
	}
	return ret;
}
// 获取文本中存储的用户个数
int get_count(int fd)
{
	lseek(fd,0,SEEK_SET);
	char temp;
	int count=0;
	while(read(fd,&temp,1)>0)
	{
		if(temp=='\n')
			count++;
	}
	// 读完之后，需要把fd重新置顶。
	lseek(fd,0,SEEK_SET);
	return count;
}
// 用于查找key对应的键值
void search(int fd,char* s_key)
{
	int count=get_count(fd);
	for(int i=0;i<count;i++)
	{
		char m_key[50]={0};
		char m_value[50]={0};
		int l=m_readline(fd,m_key,m_value);
		// printf("%d\n",l);
		if(strcmp(s_key,m_key)==0)
		{
			printf("key is %s  value is %s\n",m_key,m_value);
			lseek(fd,0,SEEK_SET);
			return;
		}
	}
	printf("your key is wrong\n");
}

//交互式循环
void talk()
{
	using_history();
    while(1)
	{
		printf("please input your choose:\n");
		char cos;
		cos=getc(stdin);
		string i_put=readline("please input your i_put:\n");
		// scanf("%c",&cos);
		cout<<i_put<<endl;
		switch(cos)
		{
			case 'l':
			{

				int ffd;
			        ffd=open("record.txt",O_RDONLY|O_CREAT|O_SYNC);
				if(ffd<0)
       				{
                			printf("open false\n");
                			return;
				}
				char key[50];
				printf("input your key\n");
				scanf("%s",key);
				search(ffd,key);
				getchar();
				//fflush(stdin);
			}
			break;
			case 'a':
			{
				int ffd;
			        ffd=open("record.txt",O_RDWR|O_CREAT|O_SYNC);
				if(ffd<0)
     				{
             				printf("open false\n");
                			return;
				}
				char key[50]={0};
				char value[50]={0};
				printf("input your key:\n");
				scanf("%s",key);
				printf("input your value:\n");
				scanf("%s",value);
               			lseek(ffd, 0, SEEK_END);
               			int n=write(ffd,key,get_length(key));
                		write(ffd," ",1);
                		write(ffd,value,get_length(value));
                		write(ffd,"\n",1);
                		printf("add success\n");
				close(ffd);
				getchar();
				// fflush(stdin);
			}
			break;
			case 'q':
			{
				return;
			}
			break;
		}
	}
}