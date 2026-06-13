#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "binary.h"

int main(int argc, char *argv[]){
	int opt;
	int opt_x = 0, opt_o = 0, opt_b = 0;

	while((opt = getopt(argc, argv, "xob")) != -1){
		switch (opt){
			case 'x' : opt_x = 1;break;
			case 'o' : opt_o = 1;break;
			case 'b' : opt_b = 1;break;
			default:
				fprintf(stderr,"Usage: %s [-x] [-o] [-b] number...\n",argv[0]);
				exit(EXIT_FAILURE);
		}
	}
	
	if(optind >= argc){
		fprintf(stderr,"Error: No Numbers Provided.\n"); 
		exit(EXIT_FAILURE);
	}
	for(int i = optind;i<argc;i++){
		int val = atoi(argv[i]);
		printf("--- Result for %d ---\n",val);
		if(opt_b){
			printf("2진수: ");
			binary(val);
			printf("\n");
		}
		if(opt_o){
			printf("8진수: %o\n",val);
		}
		if(opt_x){
			printf("16진수: %x\n",val);
		}
	}
	return 0;
}
