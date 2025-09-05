#include <stdio.h>
#include <math.h>
int main()
{
    int a,b,c;
    int x,y;
    int main=0;
    do
    {
        int i=1,j=1;
        while (i==1) {
            
         printf("\nEnter the coordinates of the line ay=bx+c in the order of a,b,c ");
            scanf("%d%d%d",&a,&b,&c);
            while(j==1)
            {
                printf("\nEnter the coordinates (x,y) of the points ");
                scanf("%d%d",&x,&y);
                int point;
                int point2;
                point= a*y;
                point2=(b*x)+c;
                if(point==point2){printf("\nThe point(%d,%d) is on the line",x,y);}
                else{printf("\nThe point(%d,%d) is not on the line",x,y);}
                printf("\nPress 1 if you like to use the same line but different point ");
                scanf("%d",&j);

            }
            printf("\nPress 1 if you like to use a different line ");
            scanf("%d",&i);
                   }
         printf("\n--------------------------\n");
        int k=1;
        while(k==1)
        {
            int upper;
            float result;
            printf("\nPlease Enter the upper limit ");
            scanf("%d",&upper);
            if(upper<2){printf("\n Error Wrong upper limit");}
            else
            {
                for(int counter=1;counter<=upper;counter++)
                           {
                               result=sqrt(counter);
                               int part=(int)result;
                               double dec=result-part;
                               if(dec==0){printf("\nThe square root of %d is %f",counter,result);}
                           }
            }
            printf("\nPress 1 to try again with a different upper limit ");
            scanf("%d",&k);
        }
         printf("\n-----------------------\n");
        int f=1;
        int num;
        while (f==1) {
            printf("\nEnter your number ");
            scanf("%d",&num);
            int n,sum=0;
            while (num>0) {
                n=num%10;
                sum=sum+n;
                num=num/10;
            }
            printf("\nThe sum of your entered number is %d",sum);
            printf("\nPress 1 if you would like to try again with another number ");
            scanf("%d",&f);
        }
         printf("\n-----------------------------\n");
        int d=1;
        
        while (d==1) {
            float key,avg=0,summ=0;
            int n=0;
            do {
             printf("\nEnter a digit ");
                scanf("%f",&key);
                n++;
                summ=summ+key;
            } while (key!=0);
            avg=summ/(n-1);
            printf("\nThe average is %f",avg);
            printf("\n Press 1 if you like to do it again ");
            scanf("%d",&d);
        }
        
        printf("\nPress 1 if you would like to exit ");
        scanf("%d",&main);
    }while (main!=1);
    
}
