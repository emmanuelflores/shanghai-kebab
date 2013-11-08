#include <iostream>
#include <vector>

using namespace std;

template <typename T>
class PassVector{
public:
    
    PassVector(){
        
    }
    
    PassVector(vector<T*>&_vecA,vector<T*>&_vecB):vecA(_vecA),vecB(_vecB){
        //if you are more into the java-ish style
        //vecA = _vecA;
        //vecB = _vecB;
    }
    
    ~PassVector(){
        
    }
    
    //create new vectors containing info related with speed, physics and etc
    //you might want to use iterators for calling functions here
    void addTheReferences(){
        for(unsigned int i=0;i<vecA.size();i++){
            addedVectorsAsReferences.push_back(new T(addPoinerValues(vecA[i], vecB[i])));
            cout<<"adding the value "<<*addedVectorsAsReferences[i]<<" at index "<<i<<endl;
        }
    }
    
    /*
     //passing the values directly from the main loop
    void addTheReferences(vector<T*>&v1,vector<T*>&v2){
        for(unsigned int i=0;i<v1.size();i++){
            addedVectorsAsReferences.push_back(new T(addPoinerValues(v1[i], v2[i])));
            cout<<"adding the value "<<*addedVectorsAsReferences[i]<<" at index "<<i<<endl;
        }
    }
     */
    
    //this function for any pointer arithmetic 
    T addPoinerValues(T* x, T* y){
        return *x + *y;//+,/,-, %
    }
    
    vector<T*>vecA;
    vector<T*>vecB;
    //new values
    vector<T*>addedVectorsAsReferences;
    
};