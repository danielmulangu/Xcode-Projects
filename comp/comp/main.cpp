//
//  main.cpp
//  comp
//
//  Created by Daniel Mulangu on 8/10/20.
//  Copyright © 2020 Daniel Mulangu. All rights reserved.
//

#include <stdio.h>

int main()
{
  int num;
  printf("How many students are in class?");
  scanf("%d",&num);
  int i=0,j=0;
  float A,B,C,D,F;
  loop: while(i<5)
  {
      if(i==0)
      {scanf("%f",&A);
             if(A<40){
                 printf("\nPassing grade must be at least 40, Please reconsider grade boundaries");
                 goto loop;}
          }
      if(i==1)
      {scanf("%f",&B);
             if(B<40){
                 printf("\nPassing grade must be at least 40, Please reconsider grade boundaries");
                 goto loop;}
          }
      if(i==2)
      {scanf("%f",&C);
             if(C<40){
                 printf("\nPassing grade must be at least 40, Please reconsider grade boundaries");
                 goto loop;}
          }
      if(i==3)
      {scanf("%f",&D);

             if(D<40){
                 printf("\nPassing grade must be at least 40, Please reconsider grade boundaries");
                 goto loop;}
          }
      if(i==4)
      {  scanf("%f",&F); }
      
      i++;
  }
 
 float gr,min,max,avg=0;
 int a=0,b=0,c=0,d=0,f=0,pass=0,fail=0;
 for(j=0;j<num;j++)
 {
     printf("\nPlease enter the student grade");
     scanf("%f",&gr);
     avg+=gr;
     if(j==0) { min=gr; max=gr;}
     else
      {
         if(gr>max) {max=gr;}
         if(gr<min)  {min=gr;}
      }
      if(gr>=A) {a++;pass++;}
      else if(gr>=B) {b++; pass++;}
      else if(gr>=C) {c++; pass++;}
      else if(gr>=D) {d++; pass++;}
      else {f++; fail++;}
 }
 avg=avg/num;
int val;
if(a==0){
    printf("\nNo students received the A grade would you like to start over and reconsider granding boundaries? if yes please enter 1 otherwise enter 2 to continue! ");
        scanf("%d",&val);
        if(val==1){goto loop;}
        }
    int clas;
    clas= num*0.75;
if(pass>=clas) {printf("\nMost of the students have passed!");}
 printf("\nThe highest grade is %f \nThe lowest grade is %f \nThe average is %f",max,min,avg);
 if(avg>D) {printf("\n Sucessful Course!");}
    printf("\nA: %d students, B:%d students, C:%d students, D:%d students, F:%d students",a,b,c,d,f);
 

    return 0;
}

