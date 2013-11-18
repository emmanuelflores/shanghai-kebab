#include <iostream>

using namespace std;


//scoping
void add(int x, int y){
	x = x+y;
}

int addInt(int x, int y){
	x = x+y;
	return x;
}

void addP(int* x, int* y){
	*x = *x+*y;
}

void appR(int &x, int &y){
	x = x+y;
}


int main(){
	
	int a = 10;
	int b = 20;
	
	add(a,b);
	printf("%d\n", a);
	
	int* pa = &a;
	int *pb = &b;
	addP(pa,pb);
	printf("%d\n",a);
	
	a = 10;
	
	appR(a,b);
	cout<<a<<endl;
	
	return 0;
}