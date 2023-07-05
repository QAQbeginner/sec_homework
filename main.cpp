#include"tool.h"
int main(int argc,char **argv)
{
    int ch;
    opterr = 0;
    int k_tag=0;
    int v_tag=0;
    if(argc==1)
    {
        talk();
    }
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
        search(fd,optarg);
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
        printf("%d\n",get_length(key));
        write(fd," ",1);
        write(fd,value,get_length(value));
        write(fd,"\n",1);
        printf("add success\n");
    }
    return 0;
}