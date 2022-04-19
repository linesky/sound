#include <unistd.h>

void ccsleep(int t){
	int n;
	for(n=0;n<t;n++)usleep(100);
}
