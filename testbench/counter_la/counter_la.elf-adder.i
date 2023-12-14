# 0 "../../firmware/adder.c"
# 1 "/home/andy/SoC_Lab_LabD/testbench/counter_la//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "../../firmware/adder.c"
# 1 "../../firmware/adder.h" 1




 int Number[10] = {0x1, 0x10, 0x100, 0x1000, 0x1, 0x10, 0x100, 0x1000, 0x1, 0x10};
# 2 "../../firmware/adder.c" 2

int __attribute__ ( ( section ( ".mprjram" ) ) ) adder()
{
 int local_var = 0;
 int index;
 for (int index = 0; index < 10; index++)
 {
  local_var += Number[index];
 }
 return local_var;
}

# 1 "../../firmware/matmul.h" 1




 int A[4*4] = {0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
 };
 int B[4*4] = {1, 2, 3, 4,
  5, 6, 7, 8,
  9, 10, 11, 12,
  13, 14, 15, 16,
 };
 int result[4*4];
# 15 "../../firmware/adder.c" 2

int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
 int i=0;
 int j;
 int k;
 int sum;
 int kk;
 unsigned int count = 0;
 int buff;
 for (i=0; i<4; i++){
  for (j=0; j<4; j++){
   sum = 0;
   for(k = 0;k<4;k++)
    for(kk=0;kk<A[(i*4) + k];kk++){
     sum += B[(k*4) + j];
    }


   result[(i*4) + j] = sum;
  }
 }
 return result;
}
