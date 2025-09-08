//
//  main.cpp
//  test1
//
//  Created by Daniel Mulangu on 6/14/21.
//

#include <iostream>
using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    int x,min;
    cin>>x;
    int y[x];
    for(int i=0;i<x;i++)
    {
        cin>>y[i];
        if(i==0){min=y[0];}
        else{
            if(min>y[i]) {min=y[i];}
        }
    }
    std::cout << "Min X is -> "<<min<<endl;
    return 0;
}
