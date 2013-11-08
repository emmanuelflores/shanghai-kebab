#include <iostream>
#include <vector>
#include "PassVector.h"

using namespace std;

int main(int argc, const char * argv[])
{
    vector<int*>randomValuesA;
    vector<int*>randomValuesB;
    
    PassVector<int> mPassVector;
    
    for(unsigned int i=0;i<10;i++){
        randomValuesA.push_back(new int(rand()%100));
        randomValuesB.push_back(new int(rand()%100));
    }
    
    mPassVector = PassVector<int>(randomValuesA,randomValuesB);
    //passing the values from the main loop//////////////////////////////
    //mPassVector.addTheReferences(randomValuesA, randomValuesB);
    mPassVector.addTheReferences();
    
    return 0;
}

