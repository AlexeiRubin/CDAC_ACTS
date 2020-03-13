#include<iostream>

using namespace std;

int length(const char*str)
{
  int i=0;
  while((str[i])!='\0')
  {   
	  i++;
  }
return i;
}

char*Strcpy(char*dest, char*src)
{
	int i=0;
	int count=0;
	count=length(src);
	while(i!=count)
	{
	  dest[i]=src[i];
	   i++;
    } 
	  return dest;
}

bool Strcmp( char*s1, char*s2)
{
	int j=length(s1);
	int k=length(s2);
	if(j==k)
	{
		for(int i=0;i<j;i++)
		{
            while(s1[i]==s2[i])
	          return true;
        }
    }
    else
          return false;
}

char*Strcat(char*dest, char*src)
{
	int j=length(dest);
	int k=length(src);
	 for(int i=0;i<k;i++)
	 {
	 	dest[j+i]=src[i];
	 }
	return dest; 	
}


int main()
{
char str1[20];
char str2[20];
char str3[20];



cout<<"enter ist string:\n";
cin>>str1;
cout<<endl;

cout<<"length of first string is:\n";
cout<<length(str1);
cout<<endl;

cout<<"enter 2nd string:\n";
cin>>str2;
cout<<endl;
cout<<"length of 2nd string is:\n";
cout<<length(str2)<<endl;

cout<<"append one string to another:\n";
char* result1=Strcat(str1,str2);
cout<<result1<<endl;

cout<<"copy string:\n";
char* result2=Strcpy(str3,str2);
cout<<result2<<endl;

cout<<"comparing two strings\n";
if(Strcmp(str3,str2))
   cout<<"equal strings\n";
  else
    cout<<"unequal strings\n";  


return 0;
}




