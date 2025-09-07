//
//  main.cpp
//  message
//
//  Created by Daniel Mulangu on 2/6/22.
//
#include <stdio.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#define MAX 128
  
struct mesg_buffer {
    long mesg_type;
    char mesg_text[100];
} message;
  
int main()
{
    key_t key;
    int msgid;
  
    // ftok to generate unique key
    key = ftok("progfile", 65);
  
    // msgget creates a message queue
    // and returns identifier
    msgid = msgget(key, 0666 | IPC_CREAT);
    message.mesg_type = 1;
  
    printf("Please enter message : ");
    fgets(message.mesg_text,MAX,stdin);
  
    
    msgsnd(msgid, &message, sizeof(message), 0);
  
    // display the message
    printf("Data send is : %s \n", message.mesg_text);
  
    return 0;
}
