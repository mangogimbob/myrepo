#include <stdio.h>
#include "binary.h"

void binary(int value){
	int started = 0;
	for(int i = 31;i>=0;i--){
		int bit = (value >> i) & 1;
		if(bit || started || i == 0){
			printf("%d",bit);
			started = 1;
		}
	}
}
