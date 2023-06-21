#include<unistd.h>
#include<stdio.h>
#include<fcntl.h>
#include<string.h>
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
int readline(int fd,char* t_key,char* t_value)
{
	char temp;
	char* tk=t_key;
	char* tv=t_value;
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
	lseek(fd,0,SEEK_SET);
	return count;
}
void main(int argc,char **argv)
{
int ch;
opterr = 0;
int k_tag=0;
int v_tag=0;
char* key=0;
char* value=0;
while((ch = getopt(argc,argv,"k:v:l:"))!= -1)
switch(ch)
{
case 'k':
{
	printf("the key is:'%s'\n",optarg);
	k_tag++;
	key=optarg;
}
break;
case 'v':
{
	printf("the value is '%s'\n",optarg);
	v_tag++;
	value=optarg;
}
break;
case 'l':
{
	int fd;
	fd=open("record.txt",O_RDONLY|O_CREAT|O_SYNC);
	int count=get_count(fd);
	for(int i=0;i<count;i++)
	{
		char m_key[50]={0};
		char m_value[50]={0};
		int l=readline(fd,m_key,m_value);
		// printf("%d\n",l);
		if(strcmp(optarg,m_key)==0)
		{
			printf("key is %s   value is %s\n",m_key,m_value);
			return ;
		}
	}
}
break;
default:
printf("other option :%c\n",ch);
}
if(k_tag&&v_tag)
{
	int fd;
	fd=open("record.txt",O_RDWR|O_CREAT|O_SYNC);
	if(fd<0)
	{
		printf("open false\n");
		return 0;
	}
	printf("%d\n",get_length(key));
	lseek(fd, 0, SEEK_END);
	write(fd,key,get_length(key));
	write(fd," ",1);
	write(fd,value,get_length(value));
	write(fd,"\n",1);
	printf("add success\n");

}
}
