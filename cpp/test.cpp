#include<iostream>
#include<stdlib.h>
#include<time.h>
#define row 450
#define column 101
#define b1 403
#define b2 3
using namespace std;
void crossover(int [column],int [column]);
void mutation(int [column]);
int fitnes(int [column],int [b1][b2]);

int main()
{
int x[b1][b2];
	int j,i=0;
	int pop[row][column];
	int cross=0,k=0;
	float cr=0.8,mr=0.5;
	float crate,mrate;
	int c=0,count=2;
 int fitness[row];
	srand(time(NULL));
	FILE *f;
	f=fopen("SAT.cnf","r");
	fseek(f,33,0);
	while(fscanf(f,"%d",&j)!=EOF)
	{
		for(int k=0;k<b2;k++)
		{
				if(j!=0)
			 {
	         x[i][k]=j;             
	         } 	
	         fseek(f,2,1);
	         fscanf(f,"%d",&j);
		}
		i++;
	}
	for(int a=0;a<row;a++)
	{
		for(int b=0;b<column;b++)
		{
			pop[a][b]=rand()%2;
		}
	}
	for(int t=0;t<row;t++)
	{
		fitness[t]=fitnes(pop[t],x);
	}
   int parents[row][column];
   int ka,test[4][column],ra;
   int fit[4],position=0,d=0;
   
while(c<3500)
{
    int min1=fitness[0],min2=fitness[0];
    int k=0,y=0;
   for(int f=1;f<row;f++)
   {
      if(min1>fitness[f])
      {
	   min2=min1;
       y=k;
       min1=fitness[f];
       k=f;
      }
   }
   fitness[0]=min1;
   fitness[1]=min2;
   	for(int col=0;col<column;col++)
   	   {
   		parents[0][col]=pop[k][col];
   		parents[1][col]=pop[y][col];	
	   }
	  
   while(count<row)
   {
   	 for(ka=0;ka<4;ka++)
   	   {
   		   ra=rand()%100;
   		    fit[ka]=fitness[ra];
   	   	while(d<101)
   		  {
   			test[ka][d]=pop[ra][d];
   			d++;
		   }d=0;
	   }
	   int min=fit[0];
	 for(int h=1;h<4;h++)
	  { 
	   	if(min>fit[h]) { min=fit[h];position=h;}
	  }
	   
	    for(int rw=0;rw<count;rw++)
       	 {
		   for(int col=0;col<column;col++)
		   {parents[count][col]=test[position][col];}
	     }count++;
   }
   
   for(int mlg=2;mlg<row-1;mlg++)
   { 
      float num=rand()%100;
       crate=num/100;
       if(crate<cr)
	    {
		crossover(parents[mlg],parents[mlg+1]);
		}
	}
	
   for(int mlg=2;mlg<row;mlg++)
   {
   	float numb=rand()%100;
   	 mrate=numb/100;
   	 if(mrate<mr)
   	 { mutation(parents[mlg]);}
   }
   
   for(int rw=0;rw<row;rw++)
   {
   	for(int col=0;col<column;col++)
   	   {
   		pop[rw][col]=parents[rw][col];
	   }
   }
 
   for(int ft=2;ft<row;ft++)
   {
   	fitness[ft]=fitnes(pop[ft],x);
   }
   
   int fittest=fitness[0];
   for(int f=1;f<row;f++)
   {
   if(fittest>fitness[f]) fittest=fitness[f];
   }

   cout<<"The fittest is "<<fittest<<endl;
   c++;
   
}
  
	return 0;
}

int fitnes(int f[column],int data[b1][b2])
{
	int r,c,tmp,fit=0;
	bool b[b2],cl;
	for(r=0;r<b1;r++)
	{
		for(c=0;c<b2;c++)
		{
			 tmp=data[r][c];
			if(tmp<0)
			{ 
		      switch(f[tmp])
		      {
                case 0:
				b[c]=1;
				break;
				default:
				b[c]=0;
				break;		      	
			  }
		   }
			else
			{
			b[c]=f[tmp];
			}
		}
		cl=b[0]||b[1]||b[2];
		if(cl==0){ fit++;}
	}
	return (fit);
}

void crossover(int p1[column],int p2[column])
{
	int a,b;
	int t;
	a=rand()%101;
	b=rand()%101;
	if(a>b){ int temp=a; a=b; b=temp;}
    for(int cr=a;cr<=b;cr++)
	    {
	        t=p1[cr];
	    	p1[cr]=p2[cr];
	    	p2[cr]=t;
		}
}

void mutation(int pr[column])
{
	int sp,fp;
	sp=rand()%101;
	fp=rand()%101;
    if(pr[sp]==0) pr[sp]==1;
    else pr[sp]==0;
    if(pr[fp]==0) pr[fp]==1;
    else pr[fp]==0;
    
}
