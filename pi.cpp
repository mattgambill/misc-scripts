#include<iostream>
#include<cmath>
using namespace std;
double partialSum(int);
int main(){

	 double pi = 1.0;
	 double lastPi = 0.0;
	 double epsilon = 0.0001;
	for(int i = 1; abs(pi - lastPi) >= epsilon; i++){	
		pi = partialSum(i);
		lastPi = partialSum(i-1);
		cout<<pi<<" "<<lastPi<<" "<<abs(pi-lastPi)<<" "<<i<<endl;
	}

return 0;
}

double partialSum(int n){
double sum = 0.0;
int sign = 1;
	for(int i = 0; i < n; i++){
		sum = sum + (4.0 *(sign))/(2*i +1);
		sign = -sign;
	}
return sum;
}
