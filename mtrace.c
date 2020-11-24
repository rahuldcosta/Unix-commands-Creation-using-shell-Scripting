#include<stdio.h>
#include<stdlib.h>
#include<mcheck.h>

int main(void)
{
	mtrace();
	int *a=(int *)malloc(sizeof(int));
	int *b=(int *)malloc(sizeof(int));
	int *c=(int *)malloc(sizeof(int));
	int *d=(int *)malloc(sizeof(int));
	int *e=(int *)malloc(sizeof(int));
	
	*a=1;
	*b=2;
	*c=3;
	*d=4;
	*e=5;
	
	free(b);
	free(c);
	
	muntrace();
	return (0);
}
