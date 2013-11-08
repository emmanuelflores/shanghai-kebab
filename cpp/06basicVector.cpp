#include <iostream>
#include <vector>

const unsigned int amount = 10;

using namespace std;

int main(){

	vector<int> intVector;
	vector<float> floatVector;


	intVector.push_back(20);
	intVector.push_back(30);
	intVector.push_back(40);

	for(unsigned int i=0;i<intVector.size();i++){
		cout<<intVector[i]<<endl;
	}


	intVector.clear();

	//////////////////////////////////////////////////////


	for(unsigned int i=0;i<amount;i++){
		floatVector.push_back((random()%100)*0.1f);
	}

	//iterators
	vector<float>::const_iterator iter;
	for(iter=floatVector.begin();iter!=floatVector.end();iter++){
		cout<<*iter<<endl;
	}

	cout<<"reverse iterator"<<endl;
	vector<float>::reverse_iterator rIter;
	for(rIter=floatVector.rbegin();rIter!=floatVector.rend();rIter++){
		cout<<*rIter<<endl;
	}

	//pick up a member of the containter
	int randomIndex = random()%floatVector.size();
	cout<<"random from the containter: "<<floatVector[randomIndex]<<endl;
	//cout<<randomIndex<<endl;
	//cout<<floatVector.size()<<endl;

	floatVector.clear();

	return 0;
}