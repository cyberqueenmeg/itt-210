
#include "crc8.h"
#include <string.h>
#include <stdio.h>


int main() {
   char* data = "John 3:16.";
   char* data2 = "exploitc2.ioJohn 3:16.";

   char sum = crc8(data, strlen(data));
   char sum2 = crc8(data2, strlen(data2));
   printf("Checksum is: 0x%0X\n", sum);
   printf("Checksum is: 0x%0X\n", sum2);

   if(sum == sum2) {
	   printf("This binary is exploited.");

   } else {
	   printf("This binary is clean.");
   }
   return 0;

}
