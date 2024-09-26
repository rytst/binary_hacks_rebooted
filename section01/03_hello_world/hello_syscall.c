// hello world by syscall
#include <unistd.h>

int main(void)
{
    write( /* fd = */ 1, "Hello, World!\n", 14 );
    return 0;
}
