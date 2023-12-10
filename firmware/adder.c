#include "adder.h"

int __attribute__ ( ( section ( ".mprjram" ) ) ) adder()
{
	int local_var = 0;
	int index;
	for (int index = 0; index < COUNT; index++)
	{
		local_var += Number[index];
	}
	return local_var;
}

#include "matmul.h"

int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
	int i=0;
	int j;
	int k;
	int sum;
	int kk;
	unsigned int count = 0;
	int buff;
	for (i=0; i<SIZE; i++){
		for (j=0; j<SIZE; j++){
			sum = 0;
			for(k = 0;k<SIZE;k++)
				for(kk=0;kk<A[(i*SIZE) + k];kk++){
					sum += B[(k*SIZE) + j];
				}
				// buff = A[(i*SIZE) + k];
				// sum += B[(k*SIZE) + j] * buff; //A[(i*SIZE) + k] * 
			result[(i*SIZE) + j] = sum;
		}
	}
	return result;
}