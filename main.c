#include <stdio.h>

#include "thestaticlib.h"

int main(void)
{
	printf("foo from static lib returns '%c'\n", staticfoo());
	return 0;
}
