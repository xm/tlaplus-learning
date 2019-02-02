#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int i;

int main() {
	/* RNG seed */
	srand((unsigned)clock());

	i = rand() % 1000;
	printf("%d\n", i);
	
	i = i + 1;
	printf("%d\n", i);

	return 0;
}
