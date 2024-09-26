// Hello, World! by libc syscall
#include <unistd.h>

int main(void)
{
    write( /* fd = */ 1, /* *buf = */ "Hello, World!\n", /* count = */ 14 );
    return 0;
}
