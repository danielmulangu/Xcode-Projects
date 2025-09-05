//
//  main.cpp
//  final2
//
//  Created by Daniel Mulangu on 6/18/21.
//

#include <iostream>
#include<stdio.h>
#define SIZE 4
#define NULL 0
struct queue{
        float items[SIZE];
              int front, rear;  } ;
struct node {
        float info;
        struct node *link;  };
typedef struct node *NODEPTR;

// prototypes of functions in use
float delQueue(struct queue * );
int empty(struct queue *);
 
int main(void)
 {
    NODEPTR p, head , save;
    struct queue q = {12.5, 14.5, 6.5 , 98.8};
    q.front=2; q.rear=1;
    head = NULL;
    do {  p = (NODEPTR)malloc(sizeof(struct node));
      p ->info = delQueue(&q);
             p ->link = NULL;
             if(head == NULL) head = p;
            else {  p->link = head;
                 head = p;
                 }
      } while (!empty(&q));     // end of do-while loop
    save=head;
    do{printf("Data = %f\n",save->info);
         save=save->link;
      }while (save!=NULL);
}
                          // end of the function main( )
int empty(struct queue *pq)
{
   return pq->front==pq->rear?1:0;
}
float delQueue(struct queue *pq)
 {
     float x;
     x= pq->items[pq->front];
     pq->front=pq->front++;
     return x;
 }

